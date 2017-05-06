module RaceBet
	class Race

		class << self
			def score(guesses, winners, n=5)
				
				top_n = 0..n-1
				points = [15, 10, 5, 3, 1]
				top_winners = winners[top_n]
				top_guesses = guesses[top_n]
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
