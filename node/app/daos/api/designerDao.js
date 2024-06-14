const con = require('../../config/dbconfig')

const designerDao = {

    table: 'designer',

    getInfo: (res, table, id) => {
        con.execute(
            `SELECT d.designer_id, d.designer_name`
        )
    }

}



module.exports = designerDao