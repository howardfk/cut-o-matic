
def process_model()
  model = Sketchup.active_model
  entities =  model.active_entities
  return searchAll(entities )
end

def searchAll(ent)
  count = 0
  ent.each do |vals|
    if vals.is_a? Sketchup::ComponentDefinition
      count = count + 1
    end
  end
  return count
end

total_volume = 0
count = 0
compEntitites = Sketchup.active_model.definitions
#path = Sketchup.find_suport_file "Split Top Roubo.skp","/Users/howard/Documents/woodworking plans/"
#compDef = definitions.load path
#puts compDef

compEntitites.each do |comp|
  puts comp.name
  puts comp.count_instances
  instancesOfComp = comp.instances
  #puts instancesOfComp
  instancesOfComp.each do |inst| 
    count = count + 1
    puts inst.volume
    puts "^ volume of item"
    if(inst.volume >0)
      total_volume = inst.volume + total_volume
    end
    puts "volume at each step ==> #{total_volume}"
  end
  puts count
end
volumeInBF = total_volume/144
puts "Volume of project in bf #{volumeInBF}"
puts "Number if compEntities included #{count}"

