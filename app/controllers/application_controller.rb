class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  include NagelViewTool

  before_action :set_copyright

  def set_copyright
    @copyright = NagelViewTool::Renderer.copyright 'Joe Nagel', 'All Rights Reserved'
  end
end

