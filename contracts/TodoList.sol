// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool isCompleted;
    }
    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string content,
        bool isCompleted
    );

    constructor() {
        createTask("Have a 2hr studying session about BlockChain :)");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

}