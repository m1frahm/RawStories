import Title from "../components/Header";
import { useAuth0 } from "@auth0/auth0-react";
import { Form, Button, Message } from "semantic-ui-react";
import React, { useEffect, useState } from "react";

//This could have been put into the hooks folder to be used later
const useNewStory = () => {
  const mutate = async (formData) => {
    try {
      const r = await fetch("/api/stories", {
        method: "POST",
        body: formData,
        //if response was okay, resolve the promise with the response otherwise reject the response
      }).then((r) => (r.ok ? Promise.resolve(r) : Promise.reject(r)));
      const result = await r.json();
     // console.log({ result });
    } catch (e) {
      console.log(e.message);
    }
  };
  return { mutate };
};

export default function AddNewStory() {
  //pulling user
  const { user } = useAuth0(); //pass user.id when submitting form
  const [dbUser, setdbUser] = useState({});

  // console.log(user);
  const addUser = () => {
    //console.log(user.email);
    const requestOptions = {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ Email: user.email }),
    };
    fetch("/api/addUser", requestOptions)
      .then((response) => response.json())
      .then((result) => setdbUser(result));
  };

 //The purpose of the useEffect hook in this code is to add a new user to the server every time the user value changes.
  useEffect(() => {
    if (user) {
      addUser();
    }
  }, [user]); 

  const [success, SetSuccess] = useState(false);

  //using/pulling mutate from useNewStory custom hook and calling it createStory
  const { mutate: createStory } = useNewStory();

  //Prevents default form submission
  const handleSubmit = (event) => {
    event.preventDefault();
    SetSuccess(true);

    const formData = new FormData(event.target);

    createStory(formData)
      .then(() => {
        console.log("working"); //if the promise is resolves, then console.log working
      })
      .catch((e) => {
        console.log("not working", e); //if the promise rejects ... " "
      });
  };

  return (
    <div>
      <Title />
      <div style={{ width: "800px", margin: "auto" }}>
        <br></br>
        <br></br>
        <div className="AddNewStoryTitle">
          <h2>What's Your Story?</h2>
        </div>
        <br></br>
        <Form
          success={success}
          widths="equal"
          onSubmit={handleSubmit}
          encType="multipart/form-data"
        >
          <Form.Group width="equal">
            <Form.Input label="Title of Post" type="text" name="postTitle" />
          </Form.Group>
          <Form.Group width="equal">
            <Form.Input label="Name of Person" type="text" name="personName" />
            <Form.Input
              label="Person Occupation"
              type="text"
              name="personOccupation"
            />
            <Form.Input
              type="hidden"
              name="userID"
              value={dbUser ? dbUser.user_id : ""}
            />
            <Form.Input
              label="Person Alma Matter"
              type="text"
              name="personAlmaMatter"
            />
          </Form.Group>

          <Form.TextArea
            label="Add Story Text Here"
            type="text"
            name="personStory"
          />
          <Form.Input label="Excerpt" type="text" name="personStoryExcerpt" />

          <Form.Input label="Insert Image" type="file" name="postImage" />
          <Message
            success
            header="Succesfully Added"
            content="Thank you for posting your story!"
          />

          <Button color="teal" type="submit">
            Add New Story
          </Button>
        </Form>
      </div>
    </div>
  );
}
