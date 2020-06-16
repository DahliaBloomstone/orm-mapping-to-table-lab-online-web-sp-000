class Student
attr_accessor :name, :grade, :id

def initialize(name, grade, id=nil)
  @id = id
  @name = name
  @grade = grade
end

def self.create_table
  sql = <<-SQL
  create TABLE IF NOT EXISTS STUDENTS (
    id INTEGER PRIMARY KEY,
    name TEXT
    grade TEXT
  )
  SQL DB[:conn].execute(sql)
  end
  end 



end
