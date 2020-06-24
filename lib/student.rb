require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id
  def initialize(name, grade)
    @id = nil
    @name = name
    @grade = grade

  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE students (
      id PRIMARY KEY,
      name TEXT,
      grade INTEGER
    )
    SQL
  end


  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
