import { useEffect, useState } from "react";

const useStories = () => {
  const [stories, setStories] = useState([]);

  useEffect(() => {
    const getData = async () => {
      try {
        const r = await fetch("http://localhost:8090/api/stories");
        const data = await r.json();
        setStories(data);
      } catch (e) {
        alert(e.message);
      }
    };

    getData();
  }, []);

  return stories;
};

const useLastStories = () => {
  const stories = useStories();

  return stories.slice(-1);
};

function StoryCard({ id, image, excerpt }) {
  return (
    <div>
      <img src={image} />
      <p>{excerpt}</p>
      {id}
    </div>
  );
}

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
