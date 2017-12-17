pragma solidity ^0.4.11;
// We have to specify what version of compiler this code will compile with

contract AuthorizationB {
  /* mapping field below is equivalent to an associative array or hash.
  The key of the mapping is role name stored as type bytes32 and value is
  an unsigned integer to store the permission id
  */
  

  bytes32[] public permissionList;
  mapping(address => bytes32) public roles;
  mapping(bytes32 => uint8) public permissions;
  

  function AuthorizationB() public {
  	permissions["ROLE1"]= 1;
  	permissions["ROLE2"]= 2;
  	permissions["ROLE3"]= 3;
  	roles[msg.sender] = "ROLE1";
  }

  function getPermissions() public returns (uint8) {
  	 bytes32 role = roles[msg.sender];
    return permissions[role];
  }
  
  function getPermissionsByRole(bytes32 role) public returns (uint8) {
    return permissions[role];
  }
  
  
}
