def my_each(array)
    i = 0
    while i < array.length
      yield array[i]
        i += 1
    end
    array
end

collection = [1, 2, 3, 4]
my_each(collection) do |i|
  puts i
end


def hello_t(array)
  if block_given?
    i = 0
    while i < array.length
      yield array[i]
        i += 1
    end
    array
  else
    puts "Hey! No block was given!"
  end
end

collection = [1, 2, 3, 4]
my_each(collection) do |i|
  puts i
end


# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end