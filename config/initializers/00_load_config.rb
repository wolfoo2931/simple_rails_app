require 'erb'

APP_CONFIG ||= {}

APP_CONFIG[:redis] = YAML.load(ERB.new(File.read("#{Rails.root}/config/redis.yml")).result)[Rails.env]