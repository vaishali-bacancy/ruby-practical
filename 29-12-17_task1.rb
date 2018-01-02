def flatten_array(nested_array, initial=[])
  nested_array.each do |item|
    if item.kind_of?(Array)
      flatten_array(item, initial)
    else
      initial.push item
    end
  end
  initial
end

# Example of use
flattened_array = flatten_array([[1,[34,56],2,[3]],4])
puts "The flattened array is#{flattened_array}"