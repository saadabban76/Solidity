import { expect } from 'chai';
import { ethers } from 'ethers';

describe("Token Contract", function () {
    it("Deployment should assign the total supply of tokens to the owner.", async function () {
        const [owner] = await ethers.getSigners(); // getSigners will get the random accounts that are created by HardHat Network.
        console.log('signers object : ', owner);
        const Token = await ethers.getContractFactory('Token'); // making a new instance of the token contract written in contracts folder.

        const hardhatToken = await Token.deploy();
        const ownerBalance = await hardhatToken.balanceOf(owner.address);
        console.log('Owner balance:', ownerBalance);

        expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);
    })
})