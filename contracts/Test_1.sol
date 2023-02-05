pragma solidity ^0.8.9;

contract Person {
    string name;

    function getName() public view returns (string memory) {
        return name;
    }

    function setName(string memory name_) public {
        name = name_;
    }
}