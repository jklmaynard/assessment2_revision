class Phone
  @@all_numbers = []
  attr_reader(:number)

  define_method(:initialize) do |number|
    @number = number
    @id = id
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@all_numbers.push(self)
  end

  define_singleton_method(:find) do |identification_number|
    found_number = nil
    @@all_numbers.each() do |number|
      if number.id().eql?(identification_number.to_i)
        found_number = number
      end
    end
    found_number
  end
end
