# User inputs question
# - Computer outputs random answer
# - User inputs "QUIT"
# - Computer outputs a goodbye message and exits


require 'pry'
require 'colorize'


@eightball_answers = ['It is certain', 'Outlook Good', 'Most Likely', 'It is
  decidedly so', 'Without a doubt', 'Yes', 'Reply Hazy Try Again', 'Cannot Predict Now', 'Concentrate and ask again', 'Dont count on it', 'My replay is
  no', 'Very doubtful', 'my sources say no', 'No']

def ask_question
  puts "Welcome to the Magic Ruby 8 Ball! Please ask a question.".yellow
  @inquiry = gets.strip.to_i
  answer
end


def answer
  case
    when @inquiry = 'quit'
      exit
    when @inquiry < 1
      verdict = @eightball_answers.sample
      puts "#{verdict}"
    else
      puts "Please give a valid question to the 8-Ball.".red
      ask_question
    end
end

while true
  ask_question
end
