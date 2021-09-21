const path = require('path');
module.exports = {
  context: __dirname,
  entry: "./frontend/todo_redux.jsx",
  output: {
    filename: "./bundle.js",
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: {
          loader: "babel-loader",
          options: {
            presets: [
              ["@babel/preset-env", { targets: "defaults" }],
              ["@babel/react", { targets: "defaults" }],
            ],
          },
        },
      },
    ],
  },
  devtool: "source-map",
  resolve: {
    extensions: [".js", ".jsx", "*"],
  },
};


