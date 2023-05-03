import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import MyNavBar from "./components/Navbar";
import ListJobs from "./components/ListJobs";

function App() {
  return (
    <div className="App">
      <MyNavBar />
      <ListJobs />
    </div>
  );
}

export default App;
