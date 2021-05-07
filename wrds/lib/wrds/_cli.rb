
# class R

# 	def initialize(**args)
# 	  @e = {}
# 	  @e[:a] = ask("which: ")
# 	  @e[:b] = ask("why: ")
# 	  @e[:c] = ask("where: ")
# 	end
# end 


require 'highline/import'
require 'apicake'
require 'httparty'
require 'json'

class CLI

  def initialize()
  end

  def start
    Display.instructions
  end


  def 
    @response = Request.endpoint(Collect.new.parameters)
    

    # @response = Request.endpoint(@params)
    #@results = Words.new(@response)
    # Display.word(@results)

  end
end

class Combine
  def self.words(**args)
    @response = JSON.parse(Request.endpoint Collect.new.parameters
  end 
end


class API < APICake::Base
  base_uri 'api.datamuse.com' 
end

class Request
  def self.create
    @parameters = Collect.new.parameters
    Request.endpoint
  end

  def self.endpoint(@parameters)
    api = API.new
    api.words parameters
  end
end

MODS = {
    means_like: :ml, sounds_like: :sl, spelled_like: :sp, 
    related_popular_nouns: :rel_jja, related_popular_adjectives: :rel_jjb, 
    related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, general_hyponyms: :rel_gen,
    comporomise_hyponyms: :rel_com, part_of_meronyms: :rel_par, 
    frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, 
    related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom,consonant_match: :rel_cns
}

class Collect
  attr_accessor :modifier, :word, :parameters

  def initialize(**args)
    @modifier = modifier
    @word = word
    @parameters = parameters
  end

  def modifier
    mod = ask("what modifier? ")
    mod = mod.to_sym
    modifier = MODS[mod] 
  end

  def word
    mod = ask("what word? ")
    mod = mod.to_sym
    word = mod
  end

  def parameters
    parameters = {:"#{@modifier}" => '"#{@word}"'}
  end




end


class Word < OpenStruct
end

class Words
  attr_accessor :results
  def initialize(response)
    @results = @response.map{|r|Word.new(r)}
  end
end


class Display
  attr_accessor :results
  attr_reader :instructions
  def initialize(results)
    @results = results
    @instruction = instructions
  end

  def self.word
      puts  @word[:word]
      puts  @word[:score]
      puts  @word[:tags]
  end

  def self.instructions
      puts %( 
  wrds: find words
  --------------------------
  In order to find words that...
    -- sound_like [apples],
    -- are spelled_like [monkey], or
    -- are similar_to [table]...
    ...one must choose a modifier, then select a word. 
  --------------------------)
  end



end