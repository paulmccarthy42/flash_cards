const path = require('path');
const appRoot = path.join(__dirname, '../../app/client');
const dstRoot = path.join(__dirname, '../../public/assets/webpack');
const pubRoot = '/assets/webpack/';

module.exports = {
  mode: 'production',
  entry: {
    testApp: [
      path.join(appRoot, './testApp/index.js'),
    ]
  },
  output: {
    path: dstRoot,
    publicPath: pubRoot,
    filename: '[name].bundle.js',
    library: '[name]',
  },
  resolve: {
    extensions: ['.js', '.jsx'],
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: "babel-loader"
        }
      }
    ]
  }
};