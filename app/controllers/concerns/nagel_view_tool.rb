module NagelViewTool
  class Renderer
    def self.copyright name, message
      "<p>&copy; #{Time.now.year} | <b>#{name}</b> #{message}</p>".html_safe
    end
  end
end