

require 'blanket'

module API
	class Datamuse

	def initialize()
		@damu = Blanket::wrap("https://api.datamuse.com")
	end

	def fetch(endpoint, **parameters)
		@damu.send(endpoint).get(params: parameters)
	end
end










































































	def damu
		@damu = Blanket::wrap("https:?/api.datamuse.com/")
	end




	def self.relations(mod, term)
		@params = {"#{mod}": "#{term}"}
	end
end




class 


relation = "#{kwargs: :kwargs}"
"#{kwargs: :kwargs}" = Damu.new.send('words').get(params: {kwargs: :kwargs})


"#{kwargs: :kwargs}".payload.each{|e| Wrd.new(word: e.word, tags: e.tags, relation: {})}


class Wrd

	attr_accessor :word, :tags
	def initialize(word, tags)
		@word = word
		@tags = tags
		@relation = {mod: :search_word}
		Wrds.add(self) 
	end

	def <=>(other)
		tags <=> other.tags
	end
end


class Wrds
	include Enumerable

	def initialize
		@wrds = []
	end

	def each(&block)
		@wrds.each(&block)
	end

	def add_wrd(wrd)
		@wrds << wrd
	end
end



require 'blanket'



damu = Blanket::wrap("https://api.datamuse.com")






class Params

WORD_METHODS = {
    means_like: :ml, sound_like: :sl, spelled_like: :sp, 
    related_popular_nouns: :rel_jja, related_popular_adjectives: :rel_jjb, related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, 
    general_hyponyms: :rel_gen, comporomise_hyponyms: :rel_com, 
    part_of_meronyms: :rel_par, 
    frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, 
    related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom, consonant_match: :rel_cns 
}

wm = WordMethods.new

parameters = wm.sounds_like("tacos")

damu.send('words').get("#{parameter}")





WordMethods.words_that(WORD_METHODS)













