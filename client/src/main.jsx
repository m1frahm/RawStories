import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import { Auth0Provider } from "@auth0/auth0-react";
import ListJobs from "./components/ListJobs.jsx";
import "./index.css";
const DOMAIN = import.meta.env.VITE_AUTH0_DOMAIN;
const CLIENTID = import.meta.env.VITE_AUTH0_CLIENT_ID;

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <Auth0Provider
    domain={DOMAIN}
    clientId={CLIENTID}
    authorizationParams={{
      redirect_uri: window.location.origin,
    }}
    >
      <App />
    </Auth0Provider>
  </React.StrictMode>
);
