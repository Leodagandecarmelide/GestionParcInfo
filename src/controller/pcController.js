const {findAll} =require('../model/pcModel')

const getAll = async (req, res) => { 
    try {
        const pcs = await findAll()
        res.status(200).json(pcs)
    } catch (error) {
        res.Status(500);
    }
}

module.exports = {getAll}
