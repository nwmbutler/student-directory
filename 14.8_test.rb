def show_source
  puts "all info from file"
end

show_source

  puts $0

  def load_students(filename = "students.csv")
    CSV.foreach("students.csv") do |row|
    end
    puts "You have successfully loaded the list"
  end
