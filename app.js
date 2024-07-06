
var express = require('express');
var app = express();
var myRepository = require('./myRepository');
app.use(express.json());
app.use(express.static('public'));
app.listen(7777, function () {
    console.log('My app is listening on port 7777!');
});



// -----------------GET 1-------------------//
app.get('/applicants', async (req, res) => {
    let x = await myRepository.getAllApplicants();
    res.json(x);
})

// ---------------GET 2-------------------//
app.get('/appliedusers', async (req, res) => {
    let x = await myRepository.getUsersWhoApplied();
    res.json(x);
})

// ----------------------POST-------------------//
app.post("/volunteeringplaces", async (req, res) => {
    let placeName = req.body.place_name;
    let x = await myRepository.AddPlaceUsingStoredProcedure(placeName);
    res.json(x);
});


// -------------------DELETE-------------------//

// app.delete("/users/:id", async (req, res) => {
//     let id = req.body.id;

//     // res.send("you asked me to delete a user id: " + req.params.id);

//     let x = await myRepository.deleteUser(id);
//     res.json(x);
// });





// app.delete('/users/:id', async (req, res) => {
//     const userId = req.params.id;

//     try {
//         const result = await myRepository.deleteUser(userId);
//         res.status(200).json({ message: 'User deleted successfully' });
//     } catch (error) {
//         console.error('Error deleting user:', error.message);
//         res.status(500).json({ error: 'Failed to delete user' });
//     }
// });




