# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( normalize.css )
Rails.application.config.assets.precompile += %w( user_new.css )
Rails.application.config.assets.precompile += %w( admin_merchant_index.css )
Rails.application.config.assets.precompile += %w( item_index.css )
Rails.application.config.assets.precompile += %w( user_index.css )
Rails.application.config.assets.precompile += %w( merchant_item_index.css)
Rails.application.config.assets.precompile += %w( user_edit.css )
Rails.application.config.assets.precompile += %w( user_show.css )
Rails.application.config.assets.precompile += %w( order_show.css )
Rails.application.config.assets.precompile += %w( cart_show.css )
Rails.application.config.assets.precompile += %w( item_show.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( admin_user_index.css )
Rails.application.config.assets.precompile += %w( dashboard.css )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
