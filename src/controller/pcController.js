const {findAll} =require('../model/pcModel')

const getAll = (req, res) => { 
    try {
        const users = await findAll()
        res.status(200).json(pcs)
    } catch (error) {
        ressend.Status(500);
    }
}

module.exports = {getAll}
