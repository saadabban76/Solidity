// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19 < 0.8.24;

contract ArrayShift {
    uint[] public arr;

    function deleteExample() public {
        arr=[1,2,3];
        /*
            using delete keyword doesn't actually delete the element
            from an array, it just replaces the element with 0 in array.
            - the length of an array is unchanged.
        */
        delete arr[1]; // output: [1,0,3]
    }

    function shiftExample() public {
        arr = [1,2,3];
        remove(1);
    }

    // here using the remove function: it first copies the last element to the new element at the end of an array then removes the last elment.

    //                                  copying     deleting last element
    // [1,2,3] -apply--> remove(1) ---> [1,3,3] --> [1,3]
    // [1,2,3,4,5,6] -apply--> remove(2) ----> [1,2,4,5,6,6] ---> [1,2,4,5,6]

    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");
        
        for(uint i =_index; i<arr.length - 1;i++) {
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    function showArr() public view returns(uint[] memory) {
        return arr;
    }
}
