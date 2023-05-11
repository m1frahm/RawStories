import { Link } from "react-router-dom";

export default function StoryCard({ id, image, excerpt }) {
  return (
    <div>
      <img src={image} />
      <p>{excerpt}</p>
      <Link to={`/stories/${id}`}>View Story</Link>
    </div>
  );
}
