class LinearSearch
  def self.linear_search(array, key)
    if array.index(key).nil?
      return "Not found"
    else
      return "#{key} FOUND at #{array.index(key)}"
    end
  end
end

just_numbers = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
search_item = 14

p LinearSearch.linear_search(just_numbers, search_item)
