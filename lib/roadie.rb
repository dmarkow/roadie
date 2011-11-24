module Roadie
  # Shortcut for inlining CSS using {Inliner}
  # @see Inliner
  def self.inline_css(*args)
    Roadie::Inliner.new(*args).execute
  end

  # Shortcut to Rails.application
  def self.app
    Rails.application
  end
end

require 'roadie/version'
require 'roadie/css_file_not_found'
require 'roadie/style_declaration'
require 'roadie/inliner'

require 'roadie/asset_provider'
require 'roadie/asset_pipeline_provider'

require 'action_mailer'
require 'roadie/action_mailer_extensions'

ActionMailer::Base.send :include, Roadie::ActionMailerExtensions
