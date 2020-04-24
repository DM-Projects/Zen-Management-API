const express = require('express');

const router = express.Router({mergeParams: true});

router.get("/", (req, res)=>{
    res.json({data: "Project routes"})
});

module.exports = router;
