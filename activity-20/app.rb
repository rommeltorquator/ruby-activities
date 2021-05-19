def find_uniq(arr)
    x = arr[0]    
    arr.each do |num|
        return num if num != x
    end
  end