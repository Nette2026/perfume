const daoCommon = require('./common/daoCommon')

const perfumeDao = {...daoCommon, ...require('./api/perfumeDao')}
const designerDao = {...daoCommon, ...require('./api/designerDao')}
const scentDao = {...daoCommon, ...require('./api/scentDao')}

module.exports = {
    perfumeDao,
    designerDao,
    scentDao
}