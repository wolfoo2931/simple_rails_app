module Configurator
  class Settings
  
    def initialize(init_config_file = "#{Rails.root}/config/application.yml")
      @settings = {}
      
      if File.exist?(init_config_file)
        @settings.merge YAML.load(ERB.new(File.read(init_config_file)).result)[Rails.env]
      end
      
    end
  
    def [](key)
      
      @settings[key] ||= YAML.load(ERB.new(File.read("#{Rails.root}/config/#{key}.yml")).result)[Rails.env]

    end
  
  end
end