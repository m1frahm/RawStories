import React, { useState, useEffect } from "react";
import * as ioicons from "react-icons/io5";
import { Button, Card, Image } from "semantic-ui-react";
import { Segment } from "semantic-ui-react";
//Note for any functions commented out, be sure to remove http://localhost:8081 if using (it might be 8080 or 8090 as well since ports changed)

const ListJobs = () => {
  const [jobs, setJobs] = useState([]);

  
  //A function to fetch the list of SWE jobs that will be load anytime that list change USING REAL API
  const loadJobs = () => {
    //   fetch("http://localhost:8081/api/swejobs") //previous way it worked
    fetch("/api/swejobs")
      .then((response) => response.json())
      .then((jobs) => {
        //setting jobs variable to the response.json
        // console.log(jobs);
        setJobs(jobs.results); //jobs.results is for the api data vs jobs is for the dummy data to output correctly
      });
  };

  // //A function to fetch the list of SWE jobs that will be load anytime that list change using DUMMY DATA
  // const loadJobs = () => {
  //   fetch("/api/swejobs")
  //     .then((response) => response.json())
  //     .then((jobs) => {
  //      // console.log(jobs);
  //       setJobs(jobs); //jobs.results is for the api data vs jobs is for the dummy data to output correctly
  //     });
  // };

  //useEffect takes loadJobs and makes it run
  useEffect(() => {
    loadJobs();
  }, []);

  return (
    <div>
      <Segment basic padded="very" textAlign="left">
        <div className="mybody">
          <div className="list-students">
            <h1>Engineering Jobs</h1>
            <h6>
              If these stories have inspired you to persist in your job search,
              take action now and submit your application!
            </h6>
            <br></br>
            <br></br>
            <br></br>
            <Card.Group itemsPerRow={1}>
              {jobs.map((job, index) => {
                //Within map need a unique key for each element in the array
                return (
                  <Card key={index}>
                    {" "}
                    <div className="JobCard">
                      <p>
                        <strong>Job Title:</strong> {job.title}
                      </p>
                      <p>
                        <strong>Job Description:</strong> {job.description}
                      </p>
                      <p>
                        <strong>Company Name:</strong>{" "}
                        {job.company.display_name}
                      </p>
                      <Button
                        as="a"
                        href={job.redirect_url}
                        primary
                        style={{
                          backgroundColor: "#121211",
                          color: "white",
                        }}
                      >
                        Apply Today
                      </Button>
                    </div>
                  </Card>
                );
              })}
            </Card.Group>
          </div>
          {/* <MyForm key={editingStudent ? editingStudent.id : null} onSaveStudent={onSaveStudent} editingStudent={editingStudent} onUpdateStudent={updateStudent} /> */}
        </div>
      </Segment>
    </div>
  );
};

export default ListJobs;
