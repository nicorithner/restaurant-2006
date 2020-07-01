class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
  end

  def closing_time(hours)
    ((@opening_time.to_i + hours).to_s + ":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    return true if @opening_time.to_i < 11; false
  end
end