import { useStories } from "./useStories";

export const useLastStories = () => {
  const stories = useStories();

  return stories.slice(-1);
};
