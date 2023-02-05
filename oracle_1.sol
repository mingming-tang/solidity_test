pragma solidity ^0.8.7;


contract OraclePrice {
    uint32 public price;
    mapping(address => uint32) private balances;
    mapping(address => uint32) private lastFeed;

    uint public lastUpdateBlockNumber;


    function balanceOf(address account) public view returns (uint32) {
        return balances[account];
    }

    function getPrice() public view returns (uint32) {
        return price;
    }

    function feed(uint32 feedPrice) public {
        lastFeed[msg.sender] = feedPrice;
    }

    function update() public returns (bool) {
        if (lastUpdateBlockNumber !=0 && lastUpdateBlockNumber+1 == block.number) {
            return false;
        }
        
        
    }

}