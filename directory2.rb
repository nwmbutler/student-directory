def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
def print_header
  puts "The students of Villians Academy"
  puts "_____________"
end
def print(students)
  students.select do |student|
  if student[:name].length <= 7
    puts "#{student[:name]} (#{student[:cohort]} cohort)"

end
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
