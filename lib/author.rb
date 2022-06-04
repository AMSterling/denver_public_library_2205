class Author
  attr_accessor :first_name,
                :last_name,
                :books

  def initialize(info)
    @name = "#{info[:first_name]} #{info[:last_name]}"
    @books = []
  end

  def name
    @name
  end

  def write(title, date)
    @books.push(@name, title, date)
    require "pry"; binding.pry
  end
end
