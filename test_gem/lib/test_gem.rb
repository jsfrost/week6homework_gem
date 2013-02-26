$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

require 'version'
require 'hello'
require 'file'
require 'yaml'

module TestGem

  puts "module TestGem defined"

  class MyArgumentError < ArgumentError; end

  def self.init_config
    defaults = { "default_file_name" => "default_file.txt",
      "supported_types" => ['txt', 'pdf'] }
    open("config.yml", "w") {|f| f.write(defaults.to_yaml) }
  end 

  def self.configure the_hash
    puts "Those parsed values are: #{the_hash}"
  end

end
