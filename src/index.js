import app from './app';

const config = require('../config');

app.listen(config.port, config.host, () => {
  console.log('Server is listening on ', config.host, 'port: ', config.port);
});
