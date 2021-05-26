def find_uniq(arr)
    arr.sort!
    if arr[arr.length - 1] != arr[arr.length - 2]
        return arr[arr.length - 1]
    else
        return arr[0]
    end
end