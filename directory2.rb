def input_students
  students = []
  while true
    puts "Please enter the name of the student, put stop for name and cohort to exit"
    name = gets.chomp
    puts "Please enter the cohort"
    cohort = gets.chomp
    if name == "stop"
    puts "Now we have #{students.count} students"
    return students
      break
    else students << { name: name, cohort: cohort }
    end
  students
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
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
print_header
print(students)
print_footer(students)
