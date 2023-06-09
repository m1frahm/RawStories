import StoryCard from "../components/StoryCard";
import { useStories } from "../hooks/useStories";
import Title from "../components/Header";
import { Card, Segment } from "semantic-ui-react";
import { Link } from "react-router-dom";
import { Button } from "semantic-ui-react";
import { useAuth0 } from "@auth0/auth0-react";


//This page uses the useStories custom hook (which allows it to be reusable)
export default function StoriesPage() {
  const stories = useStories();
  const { isAuthenticated } = useAuth0(); //isAuthenticated lets you know if user is logged in via Auth0 && useAuth0 is a publicly available custom hook 

  return (
    <div className="">
      <Title />
      <Segment basic padded="very" textAlign="left">
        {isAuthenticated ? (
          <Button
            color="yellow"
            size="huge"
            floated="right"
            as={Link}
            to="/stories/new"
          >
            {" "}
            Add New Story{" "}
          </Button>
        ) : null}
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <Card.Group itemsPerRow={4} centered>
          {stories.length
            ? stories.map((story) => (
                <StoryCard
                  key={story.post_title}
                  id={story.post_id}
                  image={story.post_img_url}
                  excerpt={story.post_excerpt}
                />
              ))
            : null}
        </Card.Group>
      </Segment>
    </div>
  );
}
