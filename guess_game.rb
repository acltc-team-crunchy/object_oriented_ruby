# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer, :choices

  def initialize(hash)
    @question = hash[:question]
    @answer = hash[:answer]
    @choices = hash[:choices]
  end
end

class Deck

  def initialize(question_answers)
    @cards = []
    question_answers.each do |hash|
      @cards << Card.new(hash)
    end
  end

  def remaining_cards
    @cards.length
  end

  def draw_card
    @cards.pop
  end
    
end

trivia_data = [
  {
    question: "What is the capital of Illinois?",
    answer: "Springfield",
    choices: [" Juneau", "Sacramento", "Springfield"]
  },
  {
    question: "Is Africa a country or a continent?",
    answer: "Continent",
    choices: ["country", "continent"]
  },
  {
    question: "Tug of war was once an Olympic event. True or false?",
    answer: "true",
    choices: ["true", "false"]
  }
]

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  puts "You must choose between #{card.choices.join(' ,')}"
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end