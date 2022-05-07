let currsize = 1.4
let headersize = 1.1
const makeBigger = () => {
   console.log("big")
   currsize += 0.1
   headersize += 0.1
   console.log(parseInt(document.querySelector("div.content").style.fontSize))
   document.querySelector("div.content").style.fontSize = currsize + 'em'
   document.querySelector("div>header").style.fontSize = headersize + 'em'
};

const makeSmaller = () => {
   currsize -= 0.1
   headersize -= 0.1
   document.querySelector("div.content").style.fontSize = currsize + 'em'
   document.querySelector("div>header").style.fontSize = headersize + 'em'
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

