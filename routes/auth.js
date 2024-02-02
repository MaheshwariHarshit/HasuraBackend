const express = require('express')
const { body, validationResult } = require('express-validator');
const router = express.Router();
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')

const JWT_SECRET = "aStringUsedToSignTheToken"

router.post('/createbuyer', async (req, res) => {
    let success = false
    //If there are errors, return bad request and the errors.
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    try {
    } catch (error) {
        res.status(500).send("Interval Server Error")
        console.log(error.message);
    }
})

router.post('/createseller', async (req, res) => {
    let success = false
    //If there are errors, return bad request and the errors.
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    try {
    } catch (error) {
        res.status(500).send("Interval Server Error")
        console.log(error.message);
    }
})

router.post('/buyerlogin', async (req, res) => {
    let success = false
    //If there are errors, return bad request and the errors.
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    const { email, password } = req.body
    try {
    } catch (error) {
        res.status(500).send("Interval Server Error")
        console.log(error.message);
    }
})

router.post('/sellerlogin', async (req, res) => {
    let success = false
    //If there are errors, return bad request and the errors.
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    const { email, password } = req.body
    try {
    } catch (error) {
        res.status(500).send("Interval Server Error")
        console.log(error.message);
    }
})

router.post('/getbuyer', async (req, res) => {
    try {
    } catch (error) {
        res.status(500).send("Interval Server Error")
        console.log(error.message);
    }
})

router.post('/getseller', async (req, res) => {
    try {
    } catch (error) {
        res.status(500).send("Interval Server Error")
        console.log(error.message);
    }
})

module.exports = router