@students = []
require 'csv'
def print_menu
  puts "\n1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    new_student(name, :cohort)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def show_students
  clear_terminal
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-" * 10
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def clear_terminal
  system("cls") || system("clear")
end

def new_student(name, cohort)
  @students << {name: name, cohort: :november}
end

def save_students
  clear_terminal
  puts "what would you like to call your file, please append with .csv?"
  file_name = gets.chomp
  file = File.open(file_name, "w") do |file|
    file.puts @students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
end
  puts "The file is saved \n"
end

def load_students(filename = "students.csv")
  CSV.foreach("students.csv", :quote_char => "|") do |row|
  end
  puts "You have successfully loaded the list"
end

def try_load_students
  filename = ARGV.first
  if filename.nil?
    load_students("students.csv")
    puts "Default loaded"
  elsif File.exists?(filename)
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else
    puts "something failed"
    exit
  end
end

try_load_students
interactive_menu
