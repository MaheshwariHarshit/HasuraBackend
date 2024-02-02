const express = require('express');
const router = express.Router();

// ROUTE 1: Get All the Notes using: GET "/api/notes/getuser". Login required
router.get('/fetchallorders', async (req, res) => {
    try {
        const data = await fetch(process.env.HASURA_PROJECT_ENDPOINT, {
            headers: {
                'x-hasura-admin-secret': "myadminsecret"
            },
            body: JSON.stringify({
                query: `query {
                    orders {
                        id
                        quantity
                        total_price
                        buyer_id
                        seller_id
                        product_id
                    }
                }
                `
            })
        })
        let result = await data.json()
        console.log(result);
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

router.post('/placeorder', async (req, res) => {
    try {
        const data = await fetch(process.env.HASURA_PROJECT_ENDPOINT, {
            headers: {
                'x-hasura-admin-secret': "myadminsecret"
            },
            body: JSON.stringify({
                query: `query {
                    orders {
                        id
                        quantity
                        total_price
                        buyer_id
                        seller_id
                        product_id
                    }
                }
                `
            })
        })
        let result = await data.json()
        console.log(result);
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

router.put('/updateuser/:id', async (req, res) => {
    const { title, description, tag } = req.body;
    try {
    } catch (error) {
        console.error(error.message);
        res.status(500).send("Internal Server Error");
    }
})

module.exports = router