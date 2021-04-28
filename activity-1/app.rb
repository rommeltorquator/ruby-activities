# 1.)
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |a|
    print a
end

# 2.)
h = {
    a:1, 
    b:2, 
    c:3, 
    d:4
}

print h[:b]

h[:e] = 5

print h

# 3.)
contact_data = [["ana@email.com", "123 Main st.", "555-123-4567"], ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = { 
	"Analyn Cajocson" => {},
	"Avion School" => {}
}

c = 0

contacts.each do |key, value|
    contacts[key][:email] = contact_data[c][0]
    contacts[key][:address] = contact_data[c][1]
    contacts[key][:phone] = contact_data[c][2]
    c += 1
end

print contacts

# 4.)
def define_age(age)
    num = 10
    4.times do
        puts "In #{num} years, you will be #{age + num}"
        num += 10
    end
end

define_age(20)