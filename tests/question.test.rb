require '../question'

question = Question.new;

puts "The newly generated question is:"
puts question
answer = $stdin.gets.chomp.to_i
if question.correct_answer?(answer)
  puts "Correct" 
else
  puts "Wrong"
end