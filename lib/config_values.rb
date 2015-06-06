require 'pathname'
require 'yaml'

class MyConfig
  attr_reader :config

  def self.get(key)
    #return that value if it exists
    new.config[key]
  end

  def self.set(key, value)
    c = new
    c.config[key] = value
    c.write_to_config_file
  end

  def initialize
    @config = load_config_file
  end

  def load_config_file
    path = Pathname.new(config_dir) + "config.yml"
    return Hash.new unless path.exist?
    YAML::load_file(path)
  end

  def write_to_config_file
    c = config_dir
    if c.nil?
      #create config dir and file in current directory
      path = (Pathname.new(".") + ".circle-cli").expand_path
      path.mkdir
    end
    File.open(File.join(c, "config.yml"), 'w') {|f| YAML.dump(@config, f, indentation: 2) }
  end

  #Recursively look for .circle-cli config directory.
  def config_dir(dir = Pathname.new("."))
    app_config_dir = dir + ".circle-cli"
    if dir.children.include?(app_config_dir)
      app_config_dir.expand_path
    else
      return nil if dir.expand_path.root?
      config_dir(dir.parent)
    end
  end
end
