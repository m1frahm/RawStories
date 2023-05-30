const path = require("path");
const express = require("express");
const cors = require("cors");
require("dotenv").config();
const db = require("./db/db-connection.js");
const dummydata = require("./dummydata.js");
const app = express();
const PORT = process.env.PORT || 8090;
app.use(cors());
app.use(express.json());
const REACT_BUILD_DIR = path.join(__dirname, "..", "client", "dist");
app.use(express.static(REACT_BUILD_DIR));
const multer = require("multer");
const storage = multer.memoryStorage();
const upload = multer({ storage });
const fetch = require("node-fetch");

//TODO
// creates an endpoint for the route "/""
app.get("/", (req, res) => {
  // res.json({ message: "Hola, from My template ExpressJS with React-Vite" }); //testing purposes only
  res.sendFile(path.join(REACT_BUILD_DIR, "index.html"));
});

//create the GET REQUEST for jobs in the endpoint '/api/swe/jobs'
app.get("/api/swejobs", async (req, res) => {
  const app_key = process.env.API_KEY;
  const app_id = process.env.API_ID;
  const params = new URLSearchParams({
    results_per_page: 100,
    what_or: "Engineer",
    title_only: "Developer",
    sort_by: "relevance",
    full_time: 1,
  });
  try {
    const URL = `https://api.adzuna.com/v1/api/jobs/gb/search/2?app_id=${app_id}&app_key=${app_key}&${params}`;
    let request = await fetch(URL);
    let result = await request.json();
//TO DO
    console.log(result);
    res.json(result); //res is response sent back to client
  } catch (error) {
    console.log(error);
  }
});

// // // create the get request for students in the endpoint '/api/swe/jobs' for dummy data
// app.get("/api/swejobs", async (req, res) => {
//   const jobs = dummydata.results;
//   res.send(jobs); //this was for the dummy data
// });


// create a get request for internal API posts in the endpoint '/stories'
app.get("/api/stories", cors(), async (req, res) => {
  try {
    const { rows: posts } = await db.query("SELECT * FROM posts");
    console.log("checking posts", posts);
    res.send(posts);
  } catch (e) {
    console.log("error we are trying to grab from catch", e);
    return res.status(400).json({ e });
  }
});

// create a get request for internal API posts in the endpoint '/stories/storyId'
app.get("/api/stories/:storyID", cors(), async (req, res) => {
  try {
    const { storyID = "" } = req.params;
    console.log({ storyID });
    const { rows: posts } = await db.query(
      'SELECT * FROM posts WHERE "post_id" = $1',
      [storyID]
    );

    if (!posts.length) {
      res.status(404).json({ e: "not found" });

      return;
    }

    res.send(posts[0]);
  } catch (e) {
    res.status(400).json({ e });

    return;
  }
});

// // create the POST REQUEST for the users table
// // It checks if a user with the same email already exists in the database. If not, it inserts the email into the users table and returns the newly inserted user object. If a user with the same email exists, it returns the existing user object.
app.post("/api/addUser", async (req, res) => {
  try {
    //in sql query we are checking to see if any user already exists with that email
    const { rows: users } = await db.query(
      "SELECT * FROM users WHERE user_email=$1",
      [req.body.Email]
    );
    console.log(req.body.Email);
    // checking to see if users is empty, and if it is, we want to insert the new user email into the users table
    if (users.length == 0) {
      const result = await db.query(
        "INSERT INTO users(user_email) VALUES($1) RETURNING *",
        [req.body.Email]
      );
      console.log(result.rows[0]);
      res.json(result.rows[0]);
    } else {
      res.json(users[0]);
    }
  } catch (e) {
    console.log(e);
    return res.status(400).json({ e });
  }
});

// // create a POST REQUEST to be able to add a new story in the endpoint '/stories/new'
app.post(
  "/api/stories",
  cors(),
  // // Middleware that handles file uploads. It expects a single file with the field name "postImage" in the request payload. The uploaded file is stored in the req.file object
  upload.single("postImage"), 
  async (req, res) => {
    // // try code is handling an image's file upload and converting it to a string to store in the database
    try {
      // // uploaded file is converted to a base64-encoded string 
      const postImageDataUrl = req.file.buffer.toString("base64");
      // // Forms a data URL that represents the uploaded image.
      const postImageUrl = `data:${req.file.mimetype};base64,${postImageDataUrl}`;
      const payload = req.body;
      // console.log("payload check", payload); //testing purposes only
      const result = await db.query(
        "INSERT INTO posts(post_title, interview_person_name, interview_person_occupation, interview_person_alma, post_body, post_excerpt, post_img_url, user_id) VALUES($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *",
        [
          payload.postTitle,
          payload.personName,
          payload.personOccupation,
          payload.personAlmaMatter,
          payload.personStory,
          payload.personStoryExcerpt,
          postImageUrl,
          payload.userID, //payload.userID, // called in form
        ]
      );
      const newStory = result.rows[0];
      res.send(newStory);
    } catch (e) {
      return res.status(400).json({ e: e.message });
    }
  }
);

// console.log that your server is up and running
app.listen(PORT, () => {
  console.log(`Back-end Server listening on ${PORT}`);
});
