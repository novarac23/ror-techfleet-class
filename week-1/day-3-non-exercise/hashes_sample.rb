dog1 = {name: "Sparky", age: 1, flees: false}
dog2 = {name: "Bolt", age: 2, flees: true}
dog3 = {name: "Quest", age: 3, flees: false}

my_dogs = [dog1, dog2, dog3]

my_dogs.each do |dog|
  if dog[:name] == "Quest"
    puts "He is my fav! And his name is #{dog[:name]}"
  end
end
