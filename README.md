# Sprockets 3 + ES6 + SystemJS Demo

Rails app to demo Sprockets 3, ES6 and SytemsJS. Rails Assets is used to include
JS packages such as React and SystemJS.

JS files ending with `.es6` will be compiled using the `sprockets-es6` gem, see
`geom.es6`, `math.es6` and `main.es6` in `/app/assets/javascripts/app/`.
Multiple ES6 files can be bundled by using the Sprockets `//= require`
declerations, see `/app/assets/javascripts/app.es6`.

The application layout loads SystemJS and sets up its configuration. For
example, it defines a bundle for `app` that contains the bundled ES6 files
defined in `/app/assets/javascripts/app.es6`.

## TODOs

  - [ ] Generate the bundle config for SystemJS automatically.
  - [ ] Remove the need for `System.defaultJSExtensions = true`.
  - [x] Look into using packages to remove SystemJS config options for
  `baseURL: "/assets"`

## Running

  * Run `bundle install`
  * Run `rails s`
  * Run `open http://localhost:3000`
