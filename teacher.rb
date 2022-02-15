require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age:, specialization:, id: nil, name: 'UNknown', parent_permission: true)
    super(id: id, age: age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
