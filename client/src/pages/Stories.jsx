import {Link} from 'react-router-dom'
import StoryCard from '../components/StoryCard'
import { useStories } from "../hooks/useStories";

export default function StoriesPage() {
  const stories = useStories();

  return (
    <div>
      Stories Page

      <Link to="/stories/new">Add New Story</Link>

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
    </div>
  );
}
