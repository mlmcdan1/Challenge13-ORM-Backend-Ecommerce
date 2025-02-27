// server.js
const app = require('./app'); // Import the app from app.js
const sequelize = require('./config/connection');

const PORT = process.env.PORT || 3001;

// Sync sequelize models to the database, then turn on the server
sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}!`);
  });
});
