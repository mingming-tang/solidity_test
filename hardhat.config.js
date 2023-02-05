require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
        chainId: 5,
        url: "https://goerli.infura.io/v3/19f952ce3ba04e09a4e844c2bc4a7dbf",
        accounts: ["c1afce82cb3c8ace7e980bd74cfedd49f01c603413db0598ecacde802e9a8737"],
    }
  }
};
