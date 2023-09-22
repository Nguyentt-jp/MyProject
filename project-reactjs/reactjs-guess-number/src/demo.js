let str1 = 5;
let str2 = "6";

let result = false;

if(str2){
    if(str1 < str2){
        result = 'Lower';
    }else if(str1 > str2){
        result = 'Higher';
    }else if(str1 == str2){
        result = 'Yippee, correct!';
    }else{
        result = 'Enter Valid Input';
    }
}
result