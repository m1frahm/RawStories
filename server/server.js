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
  // res.json({ message: "Hola, from My template ExpressJS with React-Vite" });
  res.sendFile(path.join(REACT_BUILD_DIR, "index.html"));
});

//create the get request for students in the endpoint '/api/swe/jobs'
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

//TO DO
// try {
//   const { rows: students } = await db.query("SELECT * FROM students");
//   res.send(students);
// } catch (e) {
//   return res.status(400).json({ e });
// }
//});

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

// create the POST request for the users table
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

// create a post request to be able to add a new story in the endpoint '/stories/new'
app.post(
  "/api/stories",
  cors(),
  upload.single("postImage"), //TODO
  async (req, res) => {
    // try code is handling an image's file upload and converting it to a string to store in the database
    try {
      const postImageDataUrl = req.file.buffer.toString("base64");
      const postImageUrl = `data:${req.file.mimetype};base64,${postImageDataUrl}`;
      const payload = req.body;
      console.log("payload check", payload);
      const result = await db.query(
        "INSERT INTO posts(post_title, interview_person_name, interview_person_occupation, interview_person_alma, post_body, post_excerpt, post_img_url, user_id) VALUES($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *",
        [
          payload.postTitle,
          //payload.userID, // or whatever you call it in your form
          payload.personName,
          payload.personOccupation,
          payload.personAlmaMatter,
          payload.personStory,
          payload.personStoryExcerpt,
          postImageUrl,
          payload.userID,
        ]
      );
      const newStory = result.rows[0];
      res.send(newStory);
    } catch (e) {
      return res.status(400).json({ e: e.message });
    }
  }
);

// // create the POST request
// app.post("/api/students", async (req, res) => {
//   try {
//     const newStudent = {
//       firstname: req.body.firstname,
//       lastname: req.body.lastname,
//       iscurrent: req.body.iscurrent,
//     };
//     //console.log([newStudent.firstname, newStudent.lastname, newStudent.iscurrent]);
//     const result = await db.query(
//       "INSERT INTO students(firstname, lastname, is_current) VALUES($1, $2, $3) RETURNING *",
//       [newStudent.firstname, newStudent.lastname, newStudent.iscurrent]
//     );
//     console.log(result.rows[0]);
//     res.json(result.rows[0]);
//   } catch (e) {
//     console.log(e);
//     return res.status(400).json({ e });
//   }
// });

// fetch(
//add url here "add here",

//   requestOptions
// )
//   .then((response) => response.text())
//   .then((result) => res.send(result))
//   .catch((error) => console.log("error", error));
// const jobs = dummydata.results;
// res.send(jobs);
// try {
//   const { rows: students } = await db.query("SELECT * FROM students");
//   res.send(students);
// } catch (e) {
//   return res.status(400).json({ e });
// }
//});

// // create the POST request
// app.post("/api/students", async (req, res) => {
//   try {
//     const newStudent = {
//       firstname: req.body.firstname,
//       lastname: req.body.lastname,
//       iscurrent: req.body.iscurrent,
//     };
//     //console.log([newStudent.firstname, newStudent.lastname, newStudent.iscurrent]);
//     const result = await db.query(
//       "INSERT INTO students(firstname, lastname, is_current) VALUES($1, $2, $3) RETURNING *",
//       [newStudent.firstname, newStudent.lastname, newStudent.iscurrent]
//     );
//     console.log(result.rows[0]);
//     res.json(result.rows[0]);
//   } catch (e) {
//     console.log(e);
//     return res.status(400).json({ e });
//   }
// });

// // delete request for students
// app.delete("/api/students/:studentId", async (req, res) => {
//   try {
//     const studentId = req.params.studentId;
//     await db.query("DELETE FROM students WHERE id=$1", [studentId]);
//     console.log("From the delete request-url", studentId);
//     res.status(200).end();
//   } catch (e) {
//     console.log(e);
//     return res.status(400).json({ e });
//   }
// });

// //A put request - Update a student
// app.put("/api/students/:studentId", async (req, res) => {
//   //console.log(req.params);
//   //This will be the id that I want to find in the DB - the student to be updated
//   const studentId = req.params.studentId;
//   const updatedStudent = {
//     id: req.body.id,
//     firstname: req.body.firstname,
//     lastname: req.body.lastname,
//     iscurrent: req.body.is_current,
//   };
//   console.log("In the server from the url - the student id", studentId);
//   console.log(
//     "In the server, from the react - the student to be edited",
//     updatedStudent
//   );
//   // UPDATE students SET lastname = "something" WHERE id="16";
//   const query = `UPDATE students SET firstname=$1, lastname=$2, is_current=$3 WHERE id=${studentId} RETURNING *`;
//   const values = [
//     updatedStudent.firstname,
//     updatedStudent.lastname,
//     updatedStudent.iscurrent,
//   ];
//   try {
//     const updated = await db.query(query, values);
//     console.log(updated.rows[0]);
//     res.send(updated.rows[0]);
//   } catch (e) {
//     console.log(e);
//     return res.status(400).json({ e });
//   }
// });

// console.log that your server is up and running
app.listen(PORT, () => {
  console.log(`Hola, Server listening on ${PORT}`);
});
