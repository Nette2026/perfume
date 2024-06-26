const con = require('../../config/dbconfig')
const { findAll } = require('../common/daoCommon')
// const { } = require('../dao')

const perfumeDao ={
    table: 'perfume',

    findAll: (res, table)=> {
        con.execute(
            `SELECT * FROM perfume
                JOIN perfume_to_scent USING (perfume_id)`,
                (error, rows)=> {
                    if (!error) {
                        if (rows.length === 1) {
                            res.json(...rows)
                        } else {
                            res.json(rows)
                        }
                    } else {
                    console.log('DAO ERROR', error)
                }
            }
        )
    },

    findById: (res, table, id)=> {

    con.execute(
        `SELECT p.perfume_id, p.perfume_name, p.designer_id,  
                FROM perfume p
                JOIN perfume_to_scent ps USING (perfume_id);`,
                (error, rows)=> {
                    if (!error) {
                        if (rows.length === 1) {
                            res.json(...rows)
                        } else {
                            res.json(rows)
                        }
                    } else {
                console.log('DAO ERROR', error)
                }
            }
        )
    },


    sort: (req, res, table)=> {
   
    con.execute(
       `SELECT * FROM perfume p
                LEFT OUTER JOIN designer d USING (designer_id)
                LEFT OUTER JOIN perfume_to_scent ps USING (perfume_id)
                JOIN perfume p USING (perfume_id) ORDER BY prefume_name;`,
                (error, rows)=> {
                    if (!error) {
                        if (rows.length === 1) {
                            res.json(...rows)
                        } else {
                            res.json(rows)
                        }
                    } else {
                    console.log('DAO ERROR', error)
                    }    
            }
        )
    },
    
    create: (req, res, table)=> {
        if(Object.keys(req.body).length === 0) {
            res.json({
                "error": true,
                "message": "No fields to create"
            })
        } else {
            const fields = Object.keys(req.body)
            const values = Object.values(req.body)

            con.execute(
                `INSERT INTO ${table} SET ${fields.join(' = ?, ')} = ?;`,
                values,
                (error, dbres)=> {
                    if(!error) {
                        res.send(`Last id: ${dbres.insertId}`)
                    } else {
                        console.log('DAO ERROR: ', error)
                        res.send('Error creating record')
                    }
                }
            )
        }
    },

    update: (req, res, table)=> {
    if (isNaN(req.params.id)) {
        res.json({
            "error": true,
            "message": "It must be a number"
        })
    } else if (Object.keys(req.body).length === 0) {
        res.json({
            "error": true,
            "message": "No fields to update"
        })
    } else {
        const fields = Object.keys(req.body)
        const values = Object.values(req.body)

            con.execute(
                `UPDATE ${table}
                    SET ${fields.join(' = ?, ')} = ? WHERE ${table}_id = ?;`,
                    [...values, req.params.id],
                    (error, dbres)=> {
                        if (!error) {
                            res.send(`Changed ${dbres.changedRows} row(s)`)
                        } else {
                        console.log('DAO ERROR: ', error)
                        res.send('Error creating record')
                    }
                }
            )
        }
    }
}
module.exports = perfumeDao