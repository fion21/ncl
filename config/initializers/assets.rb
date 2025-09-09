# Be sure to restart your server when you modify this file.

# Bump to expire all assets if needed.
Rails.application.config.assets.version = '1.0'

# Add additional asset load paths.
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'videos')

# Precompile additional assets (besides application.js / application.css).
# Use logical output names for your standalone stylesheets.
Rails.application.config.assets.precompile += %w[
  blogs.css
  portfolios.css
  *.mp4
  *.webm
  *.ogv
]
