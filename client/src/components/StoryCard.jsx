import { Link } from "react-router-dom";
import { Button, Card, Image } from "semantic-ui-react";

export default function StoryCard({ id, image, excerpt }) {
  return (
    <Card color="pink">
      <Image src={image} />
      <Card.Content>
        <Card.Description>{excerpt}</Card.Description>
      </Card.Content>
      <Card.Content extra>
        <Button as={Link} to={`/stories/${id}`} color="pink">
          View Story
        </Button>
      </Card.Content>
    </Card>
  );
}
