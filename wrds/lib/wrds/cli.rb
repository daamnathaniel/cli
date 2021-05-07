



class CLI


	def call
		display(intro)
		display(questions)
		display(results)
	end


	def display(args)
	end





	def intro
	puts %( wrds: find words
	--------------------------
	In order to find words that...
	    -- sound_like [apples],
	    -- are spelled_like [monkey], or
	    -- are similar_to [table]...
	    ...one must choose a modifier, then select a word. 
	--------------------------)
    end

    
