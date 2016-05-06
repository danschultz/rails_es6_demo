# Be sure to restart your server when you modify this file.

Rails.application.config.assets.configure do |env|
  # If you are using Sprockets 4, use `Sprockets::BabelProcessor`
  # instead of `Sprockets::ES6`.
  es6amd = Sprockets::ES6.new('modules' => 'system', 'moduleIds' => true, 'externalHelpers' => true)

  # Replace the default transformer to transpile each `.es6` file with `define`
  # and `require` from the AMD spec.
  # Just be sure to add `almond.js` to the application and
  # require it before requiring other assets on `application.js`
  env.register_transformer 'text/ecmascript-6', 'application/javascript', es6amd
end

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( system.js bundles.js vendor.js system.js/system.src.js )
