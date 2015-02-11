class Garden

  PLANTS = {
    radishes:  "R",
    clover: "C",
    grass: "G",
    violets: "V"
  }

  CHILDREN = ["alice", "bob", "charlie", "david", "eve", "fred", "ginny", "harriet", "ileana", "joseph", "kincaid", "larry"]

  def initialize(diagram, students=CHILDREN)
    @diagram  = diagram.split(/\n/)
    @students = students.map(&:downcase).sort
    student_methods(@diagram, @students)
  end

  def student_methods(diagram, students)
    (class << self; self; end).class_eval do
      students.each do |student|
        define_method student do 
          i = students.index(student)
          diagram.map do |row|
            x = row.chars[(i*2..i*2+1)]
            x.map do |plant|
              PLANTS.key(plant)
            end
          end.flatten
        end
      end
    end
  end

end