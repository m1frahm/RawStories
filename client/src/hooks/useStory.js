import { useState, useEffect } from 'react'

//custom built-in  for individual story
export const useStory = ({ storyId }) => {
  const [story, setStory] = useState(undefined);

  useEffect(() => {
    const getData = async () => {
      try {
        const r = await fetch(`/api/stories/${storyId}`);
        const data = await r.json();
        setStory(data);
      } catch (e) {
        alert(e.message);
      }
    };

    getData();
  }, []);

  return story;
};
