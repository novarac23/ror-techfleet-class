puts "Enter a question for Bob: "
answer = gets.chomp[-1]

case answer
when "!"
  puts "Bob: Whoa, chill out!"
when "?"
  puts "Bob: Sure."
when "."
  puts "Bob: Whatever"
else
  puts "Bob: Fine. Be that way!"
end
