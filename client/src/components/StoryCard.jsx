import { Link } from "react-router-dom";
import { Card } from "semantic-ui-react";

export default function StoryCard({ id, image, excerpt }) {
  return (
    <Card>
      <img src={image} />
      <p>{excerpt}</p>
      <Link to={`/stories/${id}`}>View Story</Link>
    </Card>
  );
}
