const express = require('express')
const cors = require('cors')

const app = express()
const port = 5000

app.use(cors())
app.use(express.json())

//Available Routes
// app.use('/api/auth', require('./routes/auth'))
// app.use('/api/seller', require('./routes/seller'))
app.use('/api/buyer', require('./routes/buyer'))

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})