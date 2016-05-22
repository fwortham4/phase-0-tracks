#6.4 Solo Challenge: Designing and Implementing a Class
# by Forrest Wortham

############# Pseudo Code ############

#class Scuba_Diver
# attribute1: name
# attribute2: o2_level
# attribute3: depth
# attribute4: dive_time

#method1: max_depth
  # records maximum depth
#method2: o2_check
  # updates o2_level

######################################

class Scuba_Diver

attr_reader :name, :o2_level, :depth, :dive_time
attr_accessor :o2_level, :depth, :dive_time

  def initialize(name)
    @name = name
    @o2_level = 3000
    @depth = 0
    @dive_time = dive_time
  end

  def max_depth()
    @depth = rand(0..150)
  end

  def o2_check()
    @o2_level = @o2_level-rand(0..3000)
  end
end

######################################

############# Driver Code ############

scuba_diver_array = []
name_list = ["Forrest", "Bob", "Sally", "Sue", "Jim"]
name_list.length.times do |i|
end

i = name_list.length
index=0
scuba_diver_array = []

puts "There are now #{name_list.length} divers in the water.\n\n"

i.times do
scuba_diver_array << Scuba_Diver.new("Forrest")

puts "Diver#: #{index+1} is named #{name_list[index]}"

puts "Diver#: #{index+1} started with #{scuba_diver_array[index].o2_level} psi of air in their tank."
scuba_diver_array[index].o2_check

scuba_diver_array[index].max_depth

puts "Diver#: #{index+1} now has #{scuba_diver_array[index].o2_level} psi of air left in their tank."
puts "Diver#: #{index+1} reached a maximum depth of #{scuba_diver_array[index].depth}ft.\n\n"

index+=1
end

######################################

