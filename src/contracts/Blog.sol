// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Blog {
    struct Post {
        uint256 id;
        string title;
        string content;
        uint256 timestamp;
    }

    mapping(uint256 => Post) private posts;
    uint256 private postCount;

    function createPost(string memory _title, string memory _content) public {
        postCount++;
        posts[postCount] = Post(postCount, _title, _content, block.timestamp);
    }

    function getPost(uint256 _id) public view returns (Post memory) {
        return posts[_id];
    }

    function getPostCount() public view returns (uint256) {
        return postCount;
    }
}
