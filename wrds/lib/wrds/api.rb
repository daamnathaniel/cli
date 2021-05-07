


require 'blanket'
require 'highline/import'


module Napi
	NAPI = Blanket.wrap("https://newsapi.org", header: {APIKey: :APIKey})

	def which_endpoint(**args)
		@endpoint = ask("which area? everything or top_headlines", %w[everything top_headlines])
	end

	def any_parameters(**args)
		@k = ask("any parameters? ", %w[q qInTitle sources domains excludedDomains from to lanugage sortBy pageSize page])
		@v = ask("what specifically ?")
		@params = {"#{@k}": :"#{@v}"}
		@entry = {}
		@entry[:params] = ask("parameters? (param, specific)")

	end

end


class Ask
	extend Napi
end




require 'apicake'
require 'highline/import'

module Damu
	class Datamuse < APICake::Base
		base_uri 'api.datamuse.com'
	end

	DAMU = Datamuse.new

	MODIFIERS = {
    	means_like: :ml, sounds_like: :sl, spelled_like: :sp, 
    	related_popular_nouns: :rel_jja, related_popular_adjectives: :rel_jjb, 
    	related_synonyms: :rel_syn, related_triggers: :rel_trg,
    	related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, general_hyponyms: :rel_gen,
    	comporomise_hyponyms: :rel_com, part_of_meronyms: :rel_par, 
    	frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, 
    	related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    	related_homophones: :rel_hom,consonant_match: :rel_cns
	}


	def which_modifier(**args)
		mod = ask("which modifier?") { |mod| mod.to_s.to_sym }
		@mod = Damu::MODIFIERS[:"#{mod}"]
	end

	def which_word(**args)
		ans = ask("which word? ") { |ans| ans.to_s.to_sym } 
	end

	def what_next(**args)
		what = ask("What now? start_over, quit? ") {|what| what.to_s.to_sym }
	end


	def parameters(**args)	
		@parameters = "#{which_modifier}: :#{which_word}"
    end

    def damu
    	@damu = "Damu::DAMU.words #{Request.parameters}"
    	   	@damu
    	    end

end

class Ask; extend Damu; end

class Request; extend Damu; end





class Word < OpenStruct
	@@words = []
	attr_accessor :word
	def self.coin(word)
		Word.new(word)
		Word.all << self
	end

 	def self.save
  		@@words << self
  	end

  	def self.all
  		@@words
  	end

  	def self.find_by_tags(tags)
  		self.all.select {|words| words.tags == tags}
  	end

  	def add(word)
  		@@words << word
  	end
  end







