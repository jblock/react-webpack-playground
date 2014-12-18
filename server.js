var server = require('pushstate-server');

server.start({
  port: process.env.PORT || 8090,
  directory: './public'
});
