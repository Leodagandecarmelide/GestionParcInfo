const Joi = require("Joi")

const validateUser = (user) => {
    const result = Joi.object({
    gender: Joi.string().valid('M', 'F').required(),
    name: Joi.string().min(2).max(100).required(),
    firstname: Joi.string().min(2).max(100).required(),
    email : Joi.string().email().required(),
    phone: Joi.string().pattern(/^[0-9]{10}$/).required()
    })
    .required()
    .validate(user, { abortEarly: false }).error

    if (result) {
        const errorMessage = result.details.map((error) =>({
            message: error.message, 
        }))
        return {

            errorCount: result.details.length,
            errorMessage
        }
    }
}

module.exports = validateUser