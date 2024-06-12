//The Router points to all the PAGES

const express = require('express')
const router = express.Router()

const port = process.env.port || 3005

const tables = ['prefume', 'designer','scent']

// root route => localhost:3005/api
router.get('/', (req, res)=> {
    res.json({
        'Perfume': `http://localhost:${port}/api/perfume`,
        'Designer': `http://localhost:${port}/api/designer`,
        'Scent': `http://localhost:${port}/api/scent`,
    })
})


tables.forEach(table => {
    router.use(`/api/${table}`, require(`./api/${table}Routes`))
})



module.exports = router