// / -> story[].slice(-3) (all)
// /stories/ -> story[] (all)
// /stories/<storyId> -> story
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { useStory } from '../hooks/useStory'

export default function IndividualStoryPage() {
  const { storyId = "" } = useParams();
  const story = useStory({ storyId });

  if (!story) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      Individual Story Page
      
      {story.post_title}
    </div>
  );
}
