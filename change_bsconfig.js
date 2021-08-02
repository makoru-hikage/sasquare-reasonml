const fs = require('fs');

const rawData = fs.readFileSync('bsconfig.json')
var bsconfig = JSON.parse(rawData)

var choice = process.argv[1]

// There's a chance this code is run like this: 'node <this script>'
if (process.argv[0] !== __filename){
  choice = process.argv[2]
}

if (['es6', 'es6-global', 'commonjs'].includes(choice)){
  bsconfig['package-specs']['module'] = choice

  bsconfig_str = JSON.stringify(bsconfig, null, 2)
  fs.writeFileSync ('bsconfig.json', bsconfig_str)

  process.exit(0)
}

console.log('USAGE: node change_bsconfig [type]')
console.log('The \'type\'s: es6, es6-global, commonjs')
console.log('What you chose was ' + choice)
process.exit(1)
