const fs = require('fs');
const { exec } = require('child_process');

let i = 5;

(function main(){
    if(i == 0)  return 0
    fs.access("Sully_"+i+".js", err =>{
        if(!err) {i--}
        fs.writeFile("Sully_"+i+".js", "const fs = require('fs');\nconst { exec } = require('child_process');\n\nlet i = "+i+";\n\n("+main+")()\n", (err) => {
            if(!err && i) {
                exec("node Sully_"+i+".js", (err, stdout, stderr) =>{})
            }
        })
    })
})()
