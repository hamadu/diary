const path = require('path');

const entries = {
  application: ['./app/frontend/javascripts/application.js']
}

module.exports = {
  entry: entries,
  output: {
    path: __dirname + '/public/assets',
    filename: 'bundle.js',
    publicPath: '/assets/'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      }
    ]
  },
  resolve: {
    modules: [
      path.join(__dirname, 'app', 'frontend')
    ],
    extensions: ['.js', '.css', '.scss', '.sass']
  },
  devtool: 'source-map',
  target: 'web',
  cache: false,
  watch: true
};
