import { useState, useEffect } from 'react'

export const useStories = () => {
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
