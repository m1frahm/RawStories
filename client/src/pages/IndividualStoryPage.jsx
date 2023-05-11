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

//Individual Story Page
  return (
    <div>
      
      <b><h1>{story.post_title}</h1> </b>
      <h5><br></br>
      Name: {story.interview_person_name}
      <br></br>
      Occupation: {story.interview_person_occupation}
      <br></br>
      Alma Matter: {story.interview_person_alma}</h5>
      <br></br>
      {story.post_body}
      
    </div>
  );
}
