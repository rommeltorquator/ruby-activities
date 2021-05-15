def list names
    # TODO
    combined = []
    final = ''
    names.each do |n|
        combined.push(n[:name])
    end
    combined.reverse
    final = combined.join(', ')
    final = final.reverse.sub(',', '& ').reverse 
end