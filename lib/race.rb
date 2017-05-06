module RaceBet
  class Race

    class << self
      def score(guesses, winners)
      	
      	sum = 0
      	points = {0 => 15, 1 => 10, 2 => 5, 3 => 3, 4 => 1}
      	top_5 = 0..4

      	guesses[top_5].each_with_index do |guess, index|
      		next if guess.nil? || winners[index].nil?

      		if guess == winners[index]
      			sum += points[index]
      		elsif winners[top_5].include?(guess)
      			sum += 1
      		end
      	end
      	sum
      end

    end

  end
end
