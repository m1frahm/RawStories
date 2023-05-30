import { useParams } from "react-router-dom";
import { useStory } from "../hooks/useStory";
import Title from "../components/Header";
import { Segment } from "semantic-ui-react";

export default function IndividualStoryPage() {
  const { storyId = "" } = useParams();
  const story = useStory({ storyId });

  if (!story) {
    return <div>Loading...</div>;
  }

  //Individual Story Page
  return (
    <div>
      <Title />
      <div className="StoryDisplay">
        <Segment padded="very" textAlign="left">
          <b>
            <h1>{story.post_title}</h1>{" "}
          </b>
          <h5>
            <br></br>
            Name: {story.interview_person_name}
            <br></br>
            Occupation: {story.interview_person_occupation}
            <br></br>
            Alma Matter: {story.interview_person_alma}
          </h5>
          <br></br>
          {/* {story.post_body} this did not pick up the html markdowns*/}
          <div dangerouslySetInnerHTML={{ __html: story.post_body }}></div>
        </Segment>
      </div>
    </div>
  );
}
