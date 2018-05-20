require 'sketchup.rb'

module Examples
  module CutOMatic

dirpath = File.dirname(__FILE__)
path = File.join(dirpath, "/setup.rb")

def setup path
  #load '/Users/howard/Scripts/sketchup/setup.rb'
  load path
  include setup
end

#setup path

puts 'test '
    unless file_loaded?(__FILE__)

      menu = UI.menu('Plugins')
      menu.add_item('wood cuts') {
        puts 'test '
        puts path
        #setup path
      }

      file_loaded(__FILE__)
    end
 
#puts model.class

#puts entities.class

  end
end

