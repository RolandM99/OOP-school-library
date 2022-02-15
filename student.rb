require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age:, classroom:, id: nil, name: 'Unknown', parent_permission: true)
    super(id: id, name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def classroom_class=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
