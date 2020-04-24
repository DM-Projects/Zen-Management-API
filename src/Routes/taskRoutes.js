const express = require('express');

const router = express.Router({mergeParams: true});

router.get("/", (req, res)=>{
    res.json({message: "tasks routes"})
});

module.exports = router;
