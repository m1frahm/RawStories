import { Link } from "react-router-dom";
import { Button, Card, Image } from "semantic-ui-react";

export default function StoryCard({ id, image, excerpt }) {
  return (
    <Card>
      <Image src={image} />
      <Card.Content>
        <Card.Description>{excerpt}</Card.Description>
      </Card.Content>
      <Card.Content extra>
        <Button>
          <Link to={`/stories/${id}`}>View Story</Link>
        </Button>
      </Card.Content>
    </Card>
  );
}
