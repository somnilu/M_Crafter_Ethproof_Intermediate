//SPDX-License-Identifier:GPL-3.0

pragma solidity >= 0.5.0 <= 0.9.0;

contract challenge2
{
    uint roll_no=10;

    function view_roll() public view returns(uint)
    {
        return roll_no;
    }

    function view_name(string memory name) public pure returns(string memory)
    {
        return name;
    }

    function change_roll(uint new_roll) public payable
    {
        require(msg.value == 1 ether, "Please send 1 Ether");
        roll_no=new_roll;
    }
    function cal_prn() public view returns(uint)
    {
        return roll_no*3;
    }
}

contract MyDerivedContract is challenge2 {

    function view_prn() public view returns (uint) 
    {
        uint result = cal_prn();
        return result;

    }
}
