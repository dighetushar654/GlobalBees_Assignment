// - Write a function that finds all positive numbers in the integer array that have their opposites in it as well.
    
    // Eg:  [-9, 4, -10, 15, 19, -8, -2, 3, 9, -15, 10, -20]
    
    // Output : [-15, 15], [-10, 10], [-9, 9]

    function oppositeNumbers(arr) {
        for(let i = 0; i<arr.length; i++){
            for(let j= 0; j<arr.length; j++){
                if(Math.sign(arr[i]) == -1){
                    if(Math.sign(arr[i]) == -1 &&  Math.sign(arr[j]) == 1){
                        if(arr[j] == Math.abs(arr[i]))
                            console.log(arr[i], arr[j])
                    }
                }
            }
        }
    }
const arr = [-9, 4, -10, 15, 19, -8, -2, 3, 3, 9, -15, 10, -20];
oppositeNumbers(arr);

