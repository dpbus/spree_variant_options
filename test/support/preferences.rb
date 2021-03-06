def reset_spree_preferences
  Spree::Preferences::Store.instance.persistence = true
  config = Rails.application.config.spree.preferences
  config.reset
  yield(config) if block_given?
end
