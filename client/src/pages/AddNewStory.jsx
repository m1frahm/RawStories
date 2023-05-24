import { Form, Button, Message } from "semantic-ui-react";
import React, { useEffect, useState } from "react";
import Title from "../components/Header";
import { useAuth0 } from "@auth0/auth0-react";

//This could have been put into the hooks folder to be used later 
const useNewStory = () => {
  const mutate = async (formData) => {
    try {
      const r = await fetch("/api/stories", {
        method: "POST",
        body: formData,
        //TO DO //if response was okay, resolve the promise with the response otherwise reject the response 
      }).then((r) => (r.ok ? Promise.resolve(r) : Promise.reject(r)));
      const result = await r.json();

      console.log({ result });
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

  console.log(user);
  const addUser = () => {
    console.log(user.email);
    const requestOptions = {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ Email: user.email }),
    };
    fetch("/api/addUser", requestOptions)
      .then((response) => response.json())
      .then((result) => setdbUser(result));

    // try {
    //   const r = await fetch("/api/addUser", {
    //     method: "POST",
    //     body: JSON.stringify({ Email: user.email }),
    //   }).then((r) => (r.ok ? Promise.resolve(r) : Promise.reject(r)));
    //   const result = await r.json();

    //   console.log({ result });
    // } catch (e) {
    //   console.log(e.message);
    // }
  };

    //TO DO //why add a new user each time?
  useEffect(() => {
    if (user) {
      addUser();
    }
  }, [user]); //every time a user changes we add in a new user 

  const [success, SetSuccess] = useState(false);

  //using/pulling mutate from useNewStory and calling it create story 
  const { mutate: createStory } = useNewStory();

  const handleSubmit = (event) => {
    event.preventDefault();
    SetSuccess(true);

    const formData = new FormData(event.target);
    // const payload = Array.from(formData.entries()).reduce(
    //   //payload common name for data you send to back-end, look at dev console as well for ref
    //   (output, [inputName, inputValue]) => ({
    //     ...output,
    //     [inputName]: inputValue,
    //   }),
    //   {}
    // );

      //TO DO - promises and async await
    createStory(formData)
      .then(() => {
        console.log("working"); //if the promise is resolves, then console.log working
      })
      .catch((e) => {
        console.log("not working", e); //if the promise rejects //TO DO
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
