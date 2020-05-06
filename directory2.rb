def input_students
  puts "Please enter the name of a student, hit enter twice when you're finished"
  students = []
  name = gets.chomp
  puts "Please enter a hobby"
  hobby = gets.chomp
  while !name.empty? do
    students << {name: name, hobby: hobby, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} hobby: #{student[:hobby]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
