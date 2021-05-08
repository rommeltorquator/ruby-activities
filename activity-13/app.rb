lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]

def count_positives_sum_negatives(lst)
    #your code here
    positive = 0
    negative = 0
    arr = []
    
    lst.each do |num|
        positive += 1 if num > 0
        negative += num if num <= 0
    end
    if lst.empty? == true
      arr = []
    else
      arr.push(positive)
      arr.push(negative)
    end
end