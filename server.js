var server = require('pushstate-server');

server.start({
  port: process.env.PORT || 8090,
  directory: './public'
});

// // Then we run webpack dev server
// var WebpackDevServer = require("webpack-dev-server");
// var webpack = require("webpack");

// var compiler = webpack(require('./webpack.config.js'));
// var devServer = new WebpackDevServer(compiler, {
//     stats: {colors: true},
//     contentBase: 'http://localhost:8090/',
//     publicPath: 'http://localhost:8080/',
// });

// devServer.listen(8080, "localhost", function() {});