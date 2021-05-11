require 'highline/import'



class Wrds

  def Wrds.welcome 
    puts %( wrds: find words
    ------------------------
      In order to find words that...
      -- sound_like [apples],
      -- are spelled_like [monkey], or
      -- are similar_to [table]...
      ...one must choose a modifier, then select a word. 
      --------------------------)
  end

  def Wrds.menu
    puts %( How this works is:

      To search for words with  [relation] to ['keyword']
      for words that            [rhyme_with] ['dog']
      you would type:           rhymes_with 'dog'
          

      for words that spelled_like 'taco' --> spelled_like 'taco'
      for word that mean_like 'basic'    --> mean_like 'basic'

      )











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

end





class Display; end
class Ask; end
class Params; end
class Menu; end


  def Display.message(msg)
    puts "#{msg}"
  end

  def Display.menu(menu)
    hash.with_index do |k,v,index|
      puts "#{hash.keys}"
    end
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




