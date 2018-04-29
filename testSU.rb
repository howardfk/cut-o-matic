require 'sketchup.rb'

def drawc
  input = UI.inputbox(["this is test enter number"], [0], "Tell me a number now")
  UI.messagebox(input, MB_OK)
end


