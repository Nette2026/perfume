const express = require('express')
const server = express()
const router = require('./app/routes/router')
const helmet =require('helmet')
const cors = require('cors')
const port = process.env.port || 3005

// Security
server.use(helmet.contentSecurityPolicy({
    useDefaults: true,
    crossOriginResourcePolicy: false,
    crossOriginEmbedderPolicy: false,
    directives: {
        "img-src": ["'self'", "https: data"],
        "scriptSrc": ["'self'", "cdn.jsdelivr.net"] // takes care of javascript
    }
}))


server.use(cors())
    .use(express.json())
    .use(express.urlencoded({ extended: true}))

server.use('/', router)



//Check to see is your server is running 
server.listen(port,()=> {
    console.log('Port is up and running')
})
