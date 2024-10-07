# NFT Contract Interaction Guide

- Start API server ``logiclab start -d ~/.coco/lab``
- ```cd ERC721/```
- ```coco lab start``` Cocolab REPL start
- ```compile NFT```
- ```get NFT``` lists alll endpoints
- ```register username```
- ```set default.sender username```

## 1. Deploy the contract with a name and symbol
```
deploy NFT.Init(name: "CryptoCocoNFT", symbol: "COCO")
```

## 2. Mint three tokens to different addresses
```
invoke NFT.mint(to: 0x1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b, tokenId: 1, tokenURI: "https://example.com/metadata/1")
invoke NFT.mint(to: 0x2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3, tokenId: 2, tokenURI: "https://example.com/metadata/2")
invoke NFT.mint(to: 0x3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4, tokenId: 3, tokenURI: "https://example.com/metadata/3")
```

## 3. Check token ownership and balance for an address
```
invoke NFT.ownerOf(tokenId: 1)
invoke NFT.balanceOf(owner: 0x1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b)
```

## 4. Approve another address to transfer a specific token
```
invoke NFT.approve(to: 0x4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5, tokenId: 1)
```

## 5. Check the approval status for a token
```
invoke NFT.getApproved(tokenId: 1)
```

## 6. Set approval for all tokens to an operator
```
invoke NFT.setApprovalForAll(operator: 0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e, approved: true)
```

## 7. Check if an address is approved for all tokens of an owner
```
invoke NFT.isApprovedForAll(owner: 0x1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b, operator: 0x5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e)
```

## 8. Transfer a token using the regular transfer method
```
invoke NFT.transferFrom(from: 0x1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b, to: 0x6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7, tokenId: 1)
```

## 9. Transfer a token using the safe transfer method
```
invoke NFT.safeTransferFrom(from: 0x2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3, to: 0x7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8, tokenId: 2)
```

## 10. Get the URI for a token
```
invoke NFT.tokenURI(tokenId: 1)
```

## 11. Get the contract name and symbol
```
invoke NFT.name()
invoke NFT.symbol()
```

## 12. Get the total supply of tokens
```
invoke NFT.totalSupply()
```

## 13. Get a token by its index
```
invoke NFT.tokenByIndex(index: 0)
```

## 14. Get a token of a specific owner by index
```
invoke NFT.tokenOfOwnerByIndex(owner: 0x3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b3c4, index: 0)
```

Note: Replace the example addresses with actual addresses when using this guide. Ensure that you have the necessary permissions to perform these operations on the NFT contract.