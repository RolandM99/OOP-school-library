require_relative 'corrector'

class Person
  attr_accessor :age, :name, :rentals, :parent_permission
  attr_reader :id

  def initialize(id:, age:, name: 'Unknown', parent_permission: true)
    @id = id
    @id = Random.rand(1..2000) if @id.nil?
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rentals(person)
    @rentals.push(person)
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def use_services?
    of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end
end
