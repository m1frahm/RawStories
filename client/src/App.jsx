import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import MyNavBar from "./components/Navbar";
import ListJobs from "./components/ListJobs";
import StoryCard from "./components/StoryCard";
import Profile from "./components/Profile";
import { createBrowserRouter, RouterProvider, Outlet, Link } from "react-router-dom";
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';

const router = createBrowserRouter([
  {
    element: (
      <div>
        <Navbar bg="dark" expand="lg">
          <Container>
            <Navbar.Brand as={Link} to="/">Home</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
              <Nav className="me-auto">
                <Nav.Link as={Link} to="/stories">All Stories</Nav.Link>
                <Nav.Link as={Link} to="/jobs">Jobs</Nav.Link>
                <Nav.Link as={Link} to="/login">Login</Nav.Link>
                <Nav.Link as={Link} to="/logout">Logout</Nav.Link>
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
        element: <div>Home Page</div>,
      },
      {
        path: "/stories",
        children: [
          {
            index: true,
            element: <div>All Stories Page</div>,
          },
          {
            path: ":storyId",
            element: <div>Individual Story Page</div>,
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
