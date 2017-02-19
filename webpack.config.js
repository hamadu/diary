const path = require('path');
const ManifestPlugin = require('webpack-manifest-plugin');

const entries = {
  application: ['./app/frontend/javascripts/application.js']
}

module.exports = {
  entry: entries,
  output: {
    path: __dirname + '/public/assets',
    filename: 'app.js',
    publicPath: '/assets/'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
      {
        test: /\.scss$/,
        use: ['style-loader', 'css-loader', 'sass-loader']
      },
      {
        test: /\.sass$/,
        use: ['style-loader', 'css-loader', 'sass-loader']
      },
      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url-loader',
        options: {
          mimetype: 'image/svg+xml'
        }
      },
      { test: /\.woff(\d+)?(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url-loader',
        options: {
          mimetype: 'application/font-woff'
        }
      },
      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url-loader',
        options: {
          mimetype: 'application/font-woff'
        }
      },
      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url-loader',
        options: {
          mimetype: 'application/font-woff'
        }
      }
    ]
  },
  resolve: {
    modules: [
      path.join(__dirname, 'node_modules'),
      path.join(__dirname, 'app', 'frontend')
    ],
    extensions: ['.js', '.css', '.scss', '.sass']
  },
  plugins: [
    new ManifestPlugin({ fileName: 'webpack-manifest.json' })
  ],
  devtool: 'source-map',
  target: 'web',
  cache: false,
  watch: true
};
