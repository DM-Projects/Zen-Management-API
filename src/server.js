const express = require('express');
const server = express();
const PORT = process.env.PORT || 8000;
const userRoutes = require('./Routes/userRoutes');
const taskRoutes = require('./Routes/taskRoutes');
const ticketRoutes = require('./Routes/ticketRoutes');
const projectRoutes = require('./Routes/projectRoutes');

server.use(require('cors')());
server.use(require('body-parser').json())

/**
 * @abstract All the routes for the differente APIs
 */

server.use("/user", userRoutes);
server.use("/task", taskRoutes);
server.use("/ticket", ticketRoutes);
server.use("/project", projectRoutes);

/**
 * @Note Do not create routes for "/", these routes are API specific only.
 *       The client will consume the APIs when it needs it, and the "/" view will be handled by the UI (React)
 */
server.use((req, res, next)=>{
    return res.send(404).json({message: "Not found pal!"});
})

server.listen(PORT, ()=>{
    console.log(`Server running at port ${PORT}`)
})