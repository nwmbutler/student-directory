def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    if students.count == 1
    puts "Now we have 1 student"
    else
    puts "Now we have #{students.count} students"
    end
    name = gets.chomp
  end
  students
end

def print_header(students)
  if students.count == 0
    puts "We currently have no students"
  else
  puts "The students of Villians Academy"
  puts "_____________"
end
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header(students)
print(students)
print_footer(students)
