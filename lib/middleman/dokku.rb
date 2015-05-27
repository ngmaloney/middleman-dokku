require "middleman/dokku/version"
require "fileutils"

if defined?(Rake)
  Rake.add_rakelib(File.expand_path('../dokku/tasks', __FILE__))
end

module Middleman
  module Dokku
    def self.generate!
      %w{config.ru Procfile}.each do |f|
        FileUtils.cp(File.expand_path("../dokku/templates/#{f}", __FILE__), f)
      end
    end
  end
end
