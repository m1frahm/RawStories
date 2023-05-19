import { Form, Button, Message } from "semantic-ui-react";
import React, { useState } from "react";
import Title from "../components/Header";
import { useAuth0 } from "@auth0/auth0-react";

const useNewStory = () => {
  const mutate = async (formData) => {
    try {
      const r = await fetch("/api/stories", {
        method: "POST",
        body: formData,
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
  const { user } = useAuth0(); //pass user.id when submitting form
  console.log({ user });
  const [success, SetSuccess] = useState(false);

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

    createStory(formData)
      .then(() => {
        console.log("working");
      })
      .catch((e) => {
        console.log("not working", e);
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
