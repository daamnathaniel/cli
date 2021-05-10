require 'highline/import'



module Wrds

METHODS = {
    means_like: :ml, sound_like: :sl, spelled_like: :sp, 
    related_popular_nouns: :rel_jja, related_popular_adjectives: :rel_jjb, 
    related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, 
    general_hyponyms: :rel_gen, comporomise_hyponyms: :rel_com, 
    part_of_meronyms: :rel_par, 
    frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, 
    related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom, consonant_match: :rel_cns 
}


class Options
@@all = {}
	def initialize
	end

	def all
		@@all
	end

	def list(hash)
		hash.keys



end




end




class Display; end
class Ask; end
class Params; end



  def Display.welcome
    puts %( wrds: find words
    ------------------------
      In order to find words that...
	    -- sound_like [apples],
	    -- are spelled_like [monkey], or
	    -- are similar_to [table]...
	    ...one must choose a modifier, then select a word. 
	    --------------------------)
  end

  def Display.options(hash)
    	hash.with_index{|k,v,index|
    		puts }

    puts %( 

    hash.keys )
  end

  def Display.results
    puts %( results )
  end

  def Display.result
  	puts %( 
  		word: #{wrd.word}
  		tags: #{wrd.tags}
  		numSyllable: #{wrd:numSyllable}
  	)
  end


  def Ask.which_option
  	option = ask("which option")
  end

  def Ask.continue_or_quit
  	puts ""
  end



  def Ask.direction
    direction = ask("which direction?")
  end

  def Ask.modifier
  	mod = ask("which modifier") { |mod| mod.to_s.to_sym }
  	@mod = Wrds::METHODS[mod.to_sym]
  end

  def Ask.variable
  	variable = ask("which word? ")
  end




