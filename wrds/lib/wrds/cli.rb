
module Wrds

  def VERSION
    %( 0.1.0 )
  end

  def title
    %( wrds )
  end

  def slogan
    %( wrds: find words. )
  end

  def please_choose
    %( please choose: )
  end

  def instructions 
    %(  
    In order to find [words] that [modify/relate_to] [word],
    you just need to type [modifier] ['word'].

    example: to find words that are [spelled_like] ['pizza'],
    just type =>  spelled_like 'pizza'
    or            sounds_like 'lazy'     
    )
  end
end





class Wrd_Methods < OpenStruct; end

Wrd_Methods = Wrd_Methods.new(    
    mean_like: :ml, sound_like: :sl, spelled_like: :sp, 
    related_popular_nouns: :rel_jja, related_popular_adjectives: :rel_jjb, 
    related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, 
    general_hyponyms: :rel_gen, comporomise_hyponyms: :rel_com,  
    frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, 
    related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom, consonant_match: :rel_cns,
    part_of_meronyms: :rel_par
)



class Display
  extend Wrds

  def self.text(list)
      "#{list}"
  end

  def self.main(list)
    puts "#{list}"
  end

  def self.options(list)
    list.each_pair {|k,v| puts "#{k}"}
  end
end




