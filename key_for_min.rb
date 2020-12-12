# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    return nil if name_hash == {}
    all_values = name_hash.collect {|key, value| value}    
    lowest = all_values[0]
    sorted_values = all_values.collect do |number|
        lowest = number if number < lowest
    end
    name_hash.select do |key, value| 
        return key if value == lowest
    end
end
