def is_isogram(string)
    arr = []
    
    string.each_char do |s|
      arr.push(s.downcase)
    end
    
    total_count = arr.count
    no_duplicate_count =  arr.uniq.count
    
    no_duplicate_count == total_count ? true : false;
end