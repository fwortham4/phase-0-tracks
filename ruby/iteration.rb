# def block
#   puts "this is before"
#   yield(5)
#   puts "this is afterwards"
# end

# block{|x| puts x}
# block{|x| puts x+1}

primary_colors = [
  "red",
  "blue",
  "yellow"
]
dish = {
  spaghetti: "italian",
  burrito: "mexican",
  eggroll: "chinese"
}

p primary_colors
primary_colors.each {|x| puts "This primary color is #{x}"}
p primary_colors

p dish
dish.each {|x, y| puts "#{x} is #{y} food."}
p dish

p primary_colors
primary_colors.map! {|x| p x.upcase}
p primary_colors

letter_array = ["a", "b", "c", "d"]
letter_array.delete_if {|x| x=="a"}

letter_array = ["a", "b", "c", "d"]
letter_array.keep_if {|x| x=="a"}

letter_array = ["a", "b", "c", "d"]
letter_array.reject! {|x| x=="a"}

letter_array = ["a", "b", "c", "d"]
letter_array.take_while {|x| x=="a"}