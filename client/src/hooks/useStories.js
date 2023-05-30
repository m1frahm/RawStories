import { useState, useEffect } from 'react'

export const useStories = () => {
  const [stories, setStories] = useState([]);

//Fetches a list of stories and stores in the stories state variable and returned for use in components.
  useEffect(() => {
    const getData = async () => {
      try {
        const r = await fetch("/api/stories");
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
