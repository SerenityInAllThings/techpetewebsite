const path = require('path');

const currentPath = path.normalize(__dirname);

module.exports = {
  entry: `${path.join(currentPath, 'src', 'index.ts')}`,
  mode: 'development',
  devtool: "inline-source-map",
  output: {
    path: `${path.join(currentPath, 'public')}`,
    filename: 'bundle.js'
  },
  resolve: {
    // Add `.ts` and `.tsx` as a resolvable extension.
    extensions: [".ts", ".tsx", ".js"]
  },
  module: {
    rules: [
      // all files with a `.ts` or `.tsx` extension will be handled by `ts-loader`
      { test: /\.tsx?$/, loader: "ts-loader" }
    ]
  }
};