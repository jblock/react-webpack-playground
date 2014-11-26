var reworkLoader = require('rework-webpack-loader');
var reworkVars = require('rework-vars');
var reworkCalc = require('rework-calc');
var reworkCustomMedia = require('rework-custom-media');

var path = require('path');
var webpack = require('webpack');

var varMap = reworkLoader.makeVarMap('src/theme/theme.css');

module.exports = {
  entry: '../index.jsx',
  target: 'web',
  context: path.join(__dirname, 'src'),
  debug: 'source-map',
  output: {
    path: path.join(__dirname, 'public'),
    publicPath: '/',
    sourceMapFilename: '[file].map',
    filename: 'app.js',
    chunkFilename: '[chunkhash].js'
  },
  resolve: {
    packageMains: [
      'webpack',
      'browser',
      'web',
      'browserify',
      ['jam', 'main'],
      'style',
      'main'
    ],
    moduleDirectories: ['node_modules'],
    extensions: ['', '.webpack.js', '.web.js', '.js', '.cjsx', '.jsx'],
    root: [
      path.join(__dirname, 'src'),
      path.join(__dirname, 'node_modules')
    ],
  },
  resolveLoader: {
    root: path.join(__dirname, 'node_modules')
  },
  module: {
    loaders: [
      { test: /\.jsx$/, loader: 'jsx-loader' },
      { test: /\.cjsx$/, loader: 'coffee-loader!cjsx-loader' },
      { test: /\.css$/, loader: 'style-loader!rework-webpack-loader' },
      {
        test: /\.scss$/,
        // Query parameters are passed to node-sass
        loader: "style!css!sass?outputStyle=expanded&" +
          "includePaths[]=" +
            (path.resolve(__dirname, "./bower_components")) + "&" +
          "includePaths[]=" +
            (path.resolve(__dirname, "./node_modules"))
      }
    ],
    noParse: /\.min\.js/
  },
  rework: {
    use: [
      reworkLoader.plugins.imports,
      reworkLoader.plugins.urls,
      reworkLoader.plugins.stripLocalDefs(varMap),
      reworkCustomMedia({map: varMap}),
      reworkVars({map: varMap}),
      reworkCalc
    ]
  }
}