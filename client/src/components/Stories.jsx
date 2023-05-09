import Container from "react-bootstrap/Container";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import Logo from "../assets/BlueTechtonicaWord.png";
import { useAuth0 } from "@auth0/auth0-react";

function Stories() {
  const { user, isAuthenticated, isLoading } = useAuth0();
  console.log(user);
  return <div>This is the homepage that will host stories main page</div>;
}

export default Stories;
