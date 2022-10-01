//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//import "../node_modules/hardhat/console.sol";
//import "../node_modules/@openzeppelin/contracts/access/Ownable.sol"; 

contract StudentDatabase {
    
    address public owner;
    uint256[] public studentIndex;

    struct Student {
        string name;
        string class;
        uint percentage;
        uint totalMarks;
    }

    mapping (uint256 => Student) public students;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(
            msg.sender == owner,
            "caller is not the owner"
        );
        _;
    }

    function register(
        uint256 studentID,
        string memory name_,
        string memory class_,
        uint percentage_,
        uint totalMarks_
    ) public returns(bool success) {
        students[studentID].name = name_;
        students[studentID].class = class_;
        students[studentID].percentage = percentage_;
        students[studentID].totalMarks = totalMarks_;

        studentIndex.push(studentID);
        return true;
    }

    function getStudentRecord(uint256 studentID) public onlyOwner view returns(string memory name, string memory class, uint percentage, uint totalMarks) {
        return (
            students[studentID].name,
            students[studentID].class,
            students[studentID].percentage,
            students[studentID].totalMarks
        );
    }
}