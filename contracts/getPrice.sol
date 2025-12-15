// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Import oficial de Chainlink
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PrecioDinamico {






    // Devuelve el precio de cualquier par Chainlink dado su contrato
    function getPrecioEthereum() public view returns (int256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price / 1e8; // Convierte a "legible"
    }

    
    // Devuelve el precio de cualquier par Chainlink dado su contrato
    function getPrecioBitcoin() public view returns (int256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price / 1e8; // Convierte a "legible"
    }


       // Devuelve el precio de cualquier par Chainlink dado su contrato
    function getEuroDolar() public view returns (int256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price / 1e8; // Convierte a "legible"
    }

          // Devuelve el precio de cualquier par Chainlink dado su contrato
    function getOroDolar() public view returns (int256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xC5981F461d74c46eB4b0CF3f4Ec79f025573B0Ea);
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price / 1e8; // Convierte a "legible"
    }
}