const path = require("path");

module.exports =  {
    entry: "./public/index.js",
    target: 'web',
    context: __dirname,
    output: {
        path: path.resolve(__dirname, "public"),
        filename: "bundle.js",
    },
};
