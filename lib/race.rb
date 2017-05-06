module RaceBet
  class Race

    class << self
      def score(guesses, winners)
      	sum = 0
      	guesses.each_with_index do |guess, index|
      		if index == 0 && guess == winners[index]
      			sum += 15
      		elsif index == 1 && guess == winners[index]
      			sum += 10
      		elsif index == 2 && guess == winners[index]
      			sum += 5
      		elsif index == 3 && guess == winners[index]
      			sum += 3
      		elsif index == 4 && guess == winners[index]
      			sum += 1
      		elsif winners[0..4].include?(guess)
      			sum += 1
      		end
      	end	
      	sum
      end

    end

  end
end
