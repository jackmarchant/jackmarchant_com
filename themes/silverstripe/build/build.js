const uglifycss = require('uglifycss');
const path = require('path');
const fs = require('fs');
const uglified = uglifycss.processFiles(
    [ path.resolve('./css/main.css'), path.resolve('./css/style.css') ],
    { maxLineLen: 500, expandVars: true }
);

fs.writeFile(path.resolve('./css/bundle.css'), uglified, err => {
  if(err) {
      return console.error(err);
  }

  console.log('Written bundle.css file');
}); 