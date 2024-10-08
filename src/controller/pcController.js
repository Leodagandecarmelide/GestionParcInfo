const {findAll, findOne} =require('../model/pcModel')

const getAll = async (req, res) => { 
    try {
        const pcs = await findAll()
        res.status(200).json(pcs)
    } catch (error) {
        res.Status(500);
    }
}

const getOne = async (req, res) => {
    try {
        const pcId = parseInt(req.params.id)
        const pc = await findOne (pcId)
        res.status(200).json(pc)
    } catch (error)
 {
    res.sendStatus(500);
 }
}  


module.exports = {getAll, getOne}
