let date = new Date();
let hour = date.getHours();
let minute = date.getMinutes();
let  second = date.getSeconds();

setInterval(() => {
    console.log(`${hour}:${minute}:${second}`);
},1000)

