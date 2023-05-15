import { Card, Segment } from "semantic-ui-react";
import { Link } from "react-router-dom";
import StoryCard from "../components/StoryCard";
import { useStories } from "../hooks/useStories";

export default function StoriesPage() {
  const stories = useStories();

  return (
    <Segment padded="very" textAlign="left">
      Stories Page
      <Link to="/stories/new">Add New Story</Link>
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
  );
}
