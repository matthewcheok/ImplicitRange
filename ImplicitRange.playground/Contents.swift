/*: 
## ImplicitRange
Let's start with an example:
*/

let array = [1, 2, 3, 4, 5]

//: You can count from the back using negative indices:
array[1....(-1)] // [2, 3, 4, 5]

//: Omit the starting index to just start from the beginning:
array[....3]     // [1, 2, 3, 4]
array[....(-2)]  // [1, 2, 3, 4]

//: Omit the ending index to end at the last element:
array[2....]     // [3, 4, 5]

//: Start with the larger index to reverse the order:
array[-2....2]   // [4, 3]
