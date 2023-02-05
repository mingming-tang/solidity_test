
// SPDX-License-Identifier: SimPL-3.0
pragma solidity ^0.8.17;
contract BulkSender{

    function batchTransfer(address payable[] memory toList) payable public returns(uint256) {
        uint256 singleAmount = msg.value / toList.length;
        for (uint8 i=0; i<toList.length; i++) {
            address payable to = toList[i];
            to.transfer(singleAmount);
        }
        return singleAmount;
    }
}