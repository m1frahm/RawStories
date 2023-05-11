import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import MyNavBar from "./components/Navbar";
import ListJobs from "./components/ListJobs";

import Profile from "./components/Profile";
import {
  createBrowserRouter,
  RouterProvider,
  Outlet,
  Link,
} from "react-router-dom";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";
import NavDropdown from "react-bootstrap/NavDropdown";
import HomePage from "./pages/HomePage";
import IndividualStoryPage from "./pages/IndividualStoryPage";
import StoriesPage from "./pages/Stories";

const router = createBrowserRouter([
  {
    element: (
      <div>
        <Navbar bg="dark" expand="lg">
          <Container>
            <Navbar.Brand as={Link} to="/">
              Home
            </Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
              <Nav className="me-auto">
                <Nav.Link as={Link} to="/stories">
                  All Stories
                </Nav.Link>
                <Nav.Link as={Link} to="/jobs">
                  Jobs
                </Nav.Link>
                <Nav.Link as={Link} to="/login">
                  Login
                </Nav.Link>
                <Nav.Link as={Link} to="/logout">
                  Logout
                </Nav.Link>
              </Nav>
            </Navbar.Collapse>
          </Container>
        </Navbar>

        <Outlet />
      </div>
    ),
    children: [
      {
        path: "/",
        element: <HomePage />,
      },
      {
        path: "/stories",
        children: [
          {
            index: true,
            element: <StoriesPage />,
          },
          {
            path: "new",
            element: <div>Create Story</div>,
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
        path: "/login",
        element: <div>Login Page</div>,
      },
    ],
  },
]);

function App() {
  console.log(window.location.origin);
  return <RouterProvider router={router} />;
}

export default App;
