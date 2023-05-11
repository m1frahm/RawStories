import StoryCard from "../components/StoryCard";
import { useLastStories } from '../hooks/useLastStories'

export default function HomePage() {
  const stories = useLastStories();

  return (
    <div>
      Home Page{" "}
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
