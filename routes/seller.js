const express = require('express');
const router = express.Router();


router.get('/fetchallproducts', fetchuser, async (req, res) => {
    try {
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

router.post('/addproduct',async (req, res) => {
        try {
        } catch (error) {
            console.error(error.message);
            res.status(500).send("Internal Server Error");
        }
    })

router.put('/updateproduct/:id', async (req, res) => {
    const { title, description, tag } = req.body;
    try {
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

router.delete('/deleteproduct/:id', async (req, res) => {
    try {
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

router.put('/updateseller/:id', async (req, res) => {
    const { title, description, tag } = req.body;
    try {
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

module.exports = router