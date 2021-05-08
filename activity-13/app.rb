# nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
nums = []

def count_positives_sum_negatives(lst)
    #your code here
    arr = [0, 0]
    
    lst.each do |num|
        arr[0] += 1 if num > 0
        arr[1] += num if num < 0
    end

    lst.empty? == true ? arr = [] : arr
end

# arr = [10, 1]
# puts arr[0] += 1

p count_positives_sum_negatives(nums)