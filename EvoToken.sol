//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "hardhat/console.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract EvoToken is ERC20 {
    address public admin;

    constructor() ERC20("EvoToken", "Evo") public {
        _mint(msg.sender, 10000000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'Admin Only');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }

    
}