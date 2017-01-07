require 'pry'

def begins_with_r(array)
    array.all? {|object| object[0] == "r"}
end

def contain_a(array)
    new_arr = []
    array.each do |obj|
        if obj.include?("a")
            new_arr.push(obj)
        end
    end
    new_arr
end
    
def first_wa(array)
    array.find {|object| object[0] == "w" && object[1] == "a"}
end

def remove_non_strings(array)
    array.select {|element| element.is_a? String}
end

def count_elements(array)
    new_arr = []
    count_hash = {}
    array.each do |element|
        if count_hash[element] == nil
            count_hash[element] = 1
        else count_hash[element] += 1
        end
    end
    count_hash.each do |key, value|
        key[:count] = value
        new_arr << key
        end
    new_arr
end



def merge_data(keys, data)
   data.each do |element|
       element.each do |key, value|
            keys.each do |hash|
               hash.merge!(value) if hash[:first_name] == key
            end
       end
   end
    keys
end

def find_cool(array)
    array.collect! do |hash|
        hash.select {|key, value| hash[:temperature] == "cool"}
    end
    array.delete_if {|element| element == {}}
end

def organize_schools(array)
    new_hash = {}
    array.each do |school, location|
        location.each do |key, value|
            if new_hash[value] == nil
                new_hash[value] = [school]
            else
                new_hash[value] << school
            end
        end
    end
    new_hash
end
