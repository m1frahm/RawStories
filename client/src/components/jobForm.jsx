import { useState } from "react";


const WeatherForm = (props) =>{

  const [city, setCity] = useState("");

  const onChange = (ev) =>{
    setCity(ev.target.value);
  }

  const handleSubmit = (ev) => {
    ev.preventDefault(); // preventDefault is so that the form does not reset on its own
    props.handleSubmit(city); // this passes handleSubmit data from app.js
  }


    return (
        <div className="weather">
        <h1 className="App-header">Techtonica Weather Forecast App</h1>
        <form onSubmit={handleSubmit}>
          <input
            id="city-name"
            type="text"
            placeholder="Please enter the city name"
            name="city"
            value={city}
            onChange={onChange}
            required
          />
          <input type="submit" value="Submit" />
        </form>
      </div>
    )
}

export default WeatherForm;