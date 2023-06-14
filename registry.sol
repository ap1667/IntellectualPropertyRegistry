// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntellectualPropertyRegistry {
    struct IntellectualProperty {
        address owner;
        string name;
        string description;
        uint256 timestamp;
    }
    
    mapping(uint256 => IntellectualProperty) public registry;
    uint256 public propertyCount;
    
    event PropertyRegistered(uint256 indexed id, address indexed owner, string name, uint256 timestamp);
    
    function registerProperty(string memory _name, string memory _description) public {
        propertyCount++;
        registry[propertyCount] = IntellectualProperty(msg.sender, _name, _description, block.timestamp);
        
        emit PropertyRegistered(propertyCount, msg.sender, _name, block.timestamp);
    }
    
    function getProperty(uint256 _id) public view returns (address owner, string memory name, string memory description, uint256 timestamp) {
        require(_id > 0 && _id <= propertyCount, "Invalid property ID");
        
        IntellectualProperty memory property = registry[_id];
        return (property.owner, property.name, property.description, property.timestamp);
    }
}
