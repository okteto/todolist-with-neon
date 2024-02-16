const Pool = require('pg').Pool
const { PG_CONNECTION_STRING } = process.env;
console.log(PG_CONNECTION_STRING)
const pool = new Pool({
    connectionString: PG_CONNECTION_STRING
});
  
module.exports = pool;