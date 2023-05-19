import { useAuth0 } from "@auth0/auth0-react";
import Title from "./Header";
import { Link} from "react-router-dom";
import { Button, Menu, Container, Image } from "semantic-ui-react";
import Logo from "../assets/Logo.png";

function MyNavBar(props) {
  const { loginWithRedirect, logout, isAuthenticated } = useAuth0();
  console.log(isAuthenticated);

  return (
    <div>
      <Menu secondary>
        <Container>
          <Menu.Item>
            <Image src={Logo} avatar size="small" />
          </Menu.Item>
          <Menu.Menu position="right">
            <Menu.Item>
              <Button as={Link} to="/" color="violet">
                {" "}
                HOME
              </Button>
            </Menu.Item>
            <Menu.Item>
              <Button as={Link} to="/jobs" color="pink">
                Explore Jobs
              </Button>
            </Menu.Item>
            {/* <Nav.Link as={Link} to="/profile"> */}
            <Menu.Item as={Link} onClick={() => loginWithRedirect()}>
              Log In
            </Menu.Item>

            {/* </Nav.Link> */}
            {/* <Nav.Link as={Link} to="/logout"> */}
            <Menu.Item
              as={Link}
              onClick={() =>
                logout({
                  logoutParams: { returnTo: window.location.origin },
                })
              }
            >
              Log Out
            </Menu.Item>
          </Menu.Menu>

          {/* </Nav.Link> */}
        </Container>
      </Menu>
    </div>
  );
}

export default MyNavBar;
