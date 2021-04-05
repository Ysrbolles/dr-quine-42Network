const fs = require('fs');

// Comment .

(function main() {
    fs.open('Grace_kid.js', 'w', (err, fd) => {
        if (!err) {
            fs.write(fd, "const fs = require('fs');\n\n// Comment .\n\n("+main+")()\n", () => {})
        }
    })
})()