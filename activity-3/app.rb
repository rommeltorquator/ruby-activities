def sort(arr)
    array_length = arr.size

    loop do
        swap = false
        (array_length - 1).times do |x|
            if arr[x] > arr[x + 1]
                arr[x], arr[x + 1] = arr[x + 1], arr[x]
                swap = true
            end
        end

        if swap == false
            break
        end
    end

    arr[0]
end

num = [100, 1, 20, 50, -24, 3, 79 , 1]
print sort(num)