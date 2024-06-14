const express = require('express')
const router = express.Router()

const Port = process.env.PORT || 3005

// const tables = ['prefume', 'designer','scent']

// root route => localhost:3005/api
router.get('/', (req, res)=> {
    res.json({
        'Perfume': `http://localhost:${PORT}/api/perfume`,
        'Designer': `http://localhost:${PORT}/api/designer`,
        'Scent': `http://localhost:${PORT}/api/scent`
    })
})

router.use('/api/perfume', require('./api/perfumeRoutes'))
router.use('/api/design', require('./api/designerRoutes'))
router.use('/api/scent', require('./api/scentRoutes'))


router.get('*', (req, res)=> {
    if (req.url === 'favicon.ico'){
        res.end()
    } else {
        res.send('<h1>404 ERROR: Page does not exist<h1>')
    }
})



module.exports = router