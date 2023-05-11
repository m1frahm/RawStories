import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import MyNavBar from "./components/Navbar";
import ListJobs from "./components/ListJobs";
import StoryCard from "./components/StoryCard";
import Profile from "./components/Profile";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <StoryCard />,
  },
  {
    path: "/Jobs",
    element: <ListJobs />,
  },
  {
    path: "/Profile",
    element: <Profile />,
  },
]);

function App() {
  console.log(window.location.origin);
  return (
    <div className="App">
      <MyNavBar />
      <RouterProvider router={router} />
    </div>
  );
}

export default App;
