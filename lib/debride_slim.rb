require 'debride'
require 'slim'

class Debride
  module Slim
    VERSION = '0.1.0'
  end

  def process_slim file
    slim = File.read file
    engine = ::Slim::Engine.new
    ruby = engine.call(slim)

    begin
      RubyParser.new.process ruby, file
    rescue => e
      warn ruby if option[:verbose]
      raise e
    end
  end
end
