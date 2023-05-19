import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import ListJobs from "./components/ListJobs";
import Profile from "./components/Profile";
import {
  createBrowserRouter,
  RouterProvider,
  Outlet,
  Link,
} from "react-router-dom";
import Container from "react-bootstrap/Container";
import HomePage from "./pages/HomePage";
import IndividualStoryPage from "./pages/IndividualStoryPage";
import StoriesPage from "./pages/Stories";
import AddNewStory from "./pages/AddNewStory";
import MyNavBar from "./components/Navbar";

const router = createBrowserRouter([
  {
    element: (
      <div className="DynamicWallpaper">
        <MyNavBar />

        <Outlet />
      </div>
    ),
    children: [
      {
        path: "/",
        element: <StoriesPage />,
      },
      {
        path: "/stories",
        children: [
          {
            path: "new",
            element: <AddNewStory />,
          },
          {
            path: ":storyId",
            element: <IndividualStoryPage />,
          },
        ],
      },
      {
        path: "/jobs",
        element: <ListJobs />,
      },
      {
        path: "/profile",
        element: <Profile />,
      },
    ],
  },
]);

function App() {
  console.log(window.location.origin);
  return <RouterProvider router={router} />;
}

export default App;
