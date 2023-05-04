import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import MyNavBar from "./components/Navbar";
import ListJobs from "./components/ListJobs";
import Stories from "./components/Stories";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Stories />,
  },
  {
    path: "/Jobs",
    element: <ListJobs />,
  },
]);

function App() {
  return (
    <div className="App">
      <MyNavBar />
      <RouterProvider router={router} />
    </div>
  );
}

export default App;
