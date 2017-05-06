module RaceBet
	class Race

		class << self
			def score(guesses, winners)

				
				top_5 = 0..4

				points = [15, 10, 5, 3, 1]
				top_winners = winners[top_5]
				top_guesses = guesses[top_5]
				gwp = top_guesses.zip(top_winners,points)

				points = gwp.map do |guess, winner, points|
					if guess == winner
						points
					elsif top_winners.include?(guess)
						1
					end
				end	

				points.compact.inject(0){|sum, a| sum + a}
			end

		end

	end
end
