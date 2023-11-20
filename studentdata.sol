// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    // Structure to represent a student
    struct Student {
        uint256 id;
        string name;
        uint256 age;
    }

    // Array to store multiple student records
    Student[] public students;

    // Function to add a new student
    function addStudent(uint256 _id, string memory _name, uint256 _age) external {
        Student memory newStudent = Student(_id, _name, _age);
        students.push(newStudent);
    }

    // Function to get the number of students
    function getNumberOfStudents() external view returns (uint256) {
        return students.length;
    }

    // Fallback function to receive Ether
    receive() external payable {
        // Handle incoming Ether transactions
    }
}
