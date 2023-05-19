import React, { useState, useEffect } from "react";
import * as ioicons from "react-icons/io5";
import MyForm from "./Form";
import { Button, Card, Image } from "semantic-ui-react";
import { Segment } from "semantic-ui-react";

//Note for any functions commented out, be sure to remove http://localhost:8081 if using (it might be 8080 or 8090 as well since ports changed)

const ListJobs = () => {
  // this is my original state with an array of students
  const [jobs, setJobs] = useState([]);

  //this is the state needed for the UpdateRequest
  // const [editingStudent, setEditingStudent] = useState(null)

  // A function to fetch the list of students that will be load anytime that list change USING REAL API
  // const loadJobs = () => {
  //   fetch("http://localhost:8081/api/swejobs")
  //     .then((response) => response.json())
  //     .then((jobs) => {
  //       // console.log(jobs);
  //       setJobs(jobs.results); //jobs.results is for the api data vs jobs is for the dummy data to output correctly
  //     });
  // };

  // A function to fetch the list of students that will be load anytime that list change using DUMMY DATA
  const loadJobs = () => {
    fetch("/api/swejobs")
      .then((response) => response.json())
      .then((jobs) => {
        console.log(jobs);
        setJobs(jobs); //jobs.results is for the api data vs jobs is for the dummy data to output correctly
      });
  };

  useEffect(() => {
    loadJobs();
  }, []);

  // const onSaveStudent = (newStudent) => {
  //     //console.log(newStudent, "From the parent - List of Students");
  //     setStudents((students) => [...students, newStudent]);
  // }

  //A function to control the update in the parent (student component)
  // const updateStudent = (savedStudent) => {
  //     // console.log("Line 29 savedStudent", savedStudent);
  //     // This function should update the whole list of students -
  //     loadStudents();
  // }

  //A function to handle the Delete funtionality
  // const onDelete = (student) => {
  //     //console.log(student, "delete method")
  //     return fetch(`http://localhost:8080/api/students/${student.id}`, {
  //         method: "DELETE"
  //     }).then((response) => {
  //         //console.log(response);
  //         if (response.ok) {
  //             loadStudents();
  //         }
  //     })
  // }

  //A function to handle the Update functionality
  // const onUpdate = (toUpdateStudent) => {
  //     //console.log(toUpdateStudent);
  //     setEditingStudent(toUpdateStudent);

  // }

  return (
    <div className="mybody">
      <div className="list-students">
        <h1>Engineering Jobs</h1>
        <h6>If these stories have inspired you to persist in your job search, take action now and submit your application!</h6>
        <br></br>
        <br></br>
        <Card.Group itemsPerRow={1}>
          {jobs.map((job, index) => {
            return (
              <Card key={index}>
                {" "}
                Job Title: {job.title}
                <br></br>
                <br></br>
                Job Description: {job.description}
                <br></br>
                <br></br>
                Company Name: {job.company.display_name}
                <br></br>
                <br></br>
                <a href={job.redirect_url}>Link to Apply</a>
              </Card>
            );
          })}
        </Card.Group>
      </div>
      {/* <MyForm key={editingStudent ? editingStudent.id : null} onSaveStudent={onSaveStudent} editingStudent={editingStudent} onUpdateStudent={updateStudent} /> */}
    </div>
  );
};

export default ListJobs;
