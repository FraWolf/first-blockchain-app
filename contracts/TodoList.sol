pragma solidity ^0.5.0;

contract TodoList {

    // Uint => unsigned int
    // public keyboard, to use the variable like a function (ex: this.taskCount() = 0)

    uint public taskCount = 0;
    
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // Sort of array, the content of tasks (the TASK is an uint)
    mapping(uint => Task) public tasks;

    // Function that runs the first time that the script start, as a configurator
    constructor() public {

        // Create an default task for the first bot
        createTask("Chiamarsi Fra");
        
    }

    // Function to add in the "tasks" array a new task
    function createTask(string memory _content) public {

        // Increment taskCount + 1 to assign an ID
        taskCount ++;

        // Adding to the task array a new task
        tasks[taskCount] = Task(taskCount, _content, false);

    }

}