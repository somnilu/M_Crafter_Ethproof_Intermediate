//SPDX-License-Identifier:GPL-3.0

pragma solidity >0.5.0 <= 0.9.0;

contract challenge1
{
    address admin;
    constructor(){
        admin = msg.sender;
    }
    modifier onlyadmin 
    {
        require(admin==msg.sender,"Only Admin can access it");
        _;
    }
    string greet = "Hello World!";

    function getdata() public view onlyadmin returns(string memory)
    {
        return greet;
    }
}
