def multiply(a,b)
  if a.zero?
    return 0
  end
  
  b + multiply(a - 1, b)
end