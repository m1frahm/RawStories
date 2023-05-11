import Container from "react-bootstrap/Container";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import Logo from "../assets/BlueTechtonicaWord.png";
import { useAuth0 } from "@auth0/auth0-react";
import React, { useState, useEffect } from "react";

const StoryCard = () => {
  const [cardData, setCardData] = useState(null);

  useEffect(() => {
    fetch("http:/api") // Replace with your API endpoint
      .then((response) => response.json())
      .then((data) => setCardData(data))
      .catch((error) => console.error("Error fetching card data:", error));
  }, []);

  // Render your card component here
  return (
    <div className="card">
      {cardData ? (
        <div>
          <h3>{cardData.posts.post_title}</h3>
          <p>{cardData.posts.post_excerpt}</p>
          <p>{cardData.posts.post_img_url}</p>
        </div>
      ) : (
        <p>Loading story card data...</p>
      )}
    </div>
  );
};

export default StoryCard;
