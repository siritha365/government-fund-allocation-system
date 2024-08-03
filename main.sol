// SPDX-License-Identifier: MIT
pragma solidity 0.8.19 ;
    contract governmentfundallocation{
        address public government;
        mapping(address=>uint256) public fundallocations;
        constructor(){
            government=msg.sender;
        }
        function allocatefunds(address beneficiary,uint256 amount) public{
            require(msg.sender==government,"only government can allocate funds");
            fundallocations[beneficiary]+=amount;
        }
        function getfundallocation(address beneficiary) public view returns(uint256){
         return fundallocations[beneficiary];
        }
    
    }
    
