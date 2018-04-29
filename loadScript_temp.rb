require 'sketchup.rb'

def setup
  load '/Users/howard/Scripts/sketchup/setup.rb'
  include setup
end

setup

puts model.class

puts entities.class
