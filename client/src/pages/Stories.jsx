import { Card, Segment } from "semantic-ui-react";
import { Link } from "react-router-dom";
import StoryCard from "../components/StoryCard";
import { useStories } from "../hooks/useStories";
import { Button } from "semantic-ui-react";
import Title from "../components/Header";

export default function StoriesPage() {
  const stories = useStories();

  return (
    <div>
     <Title/>
      <Segment padded="very" textAlign="left">
        <Button color="yellow" size="huge" floated="right" as={Link} to="/stories/new">
          {" "}
          Add New Story{" "}
        </Button>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <Card.Group itemsPerRow={4} centered>
          {stories.length
            ? stories.map((story) => (
                <StoryCard
                  key={story.post_title}
                  id={story.postID}
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
