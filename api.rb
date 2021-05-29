require 'tlaw'
require 'highline/import'

   QUERY_PARAMS = {
    means_like: :ml, sounds_like: :sl, spelled_like: :sp, related_popular_nouns: :rel_jja,
    related_popular_adjectives: :rel_jjb, related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, general_hyponyms: :rel_gen,
    comporomise_hyponyms: :rel_com, part_of_meronyms: :rel_par, frequent_followers: :rel_bga,
    frequent_predecessors: :rel_bgb, related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom,consonant_match: :rel_cns
  }

  # module Questions
  #   def which_one
  #     ask("which one")
  #   end
  #   def where_togo
  #     ask("where to go next?")
  #   end

  #   def self.what
  #       ask("what one")
  #   end
  # end


 module Questions
   def self.which
       ask("which #{self}?")
   end

   def self.what
       ask("what #{self}?")
   end

   def self.why
      ask("why?")
   end
 end



    class Params
       attr_reader :param_hash
      def self.param_hash
        datamuse_param_hash = {QUERY_PARAMS[Questions.which.to_sym] => Questions.what}
      end
    end


  class Exchanges
    attr_reader :welcome
    def self.welcome
      welcome_exchange = 




Params.param_hash




require 'tlaw'
require 'highline/import'
QUERY_PARAMS = {
  means_like: :ml, sounds_like: :sl, spelled_like: :sp, related_popular_nouns: :rel_jja,
  related_popular_adjectives: :rel_jjb, related_synonyms: :rel_syn, related_triggers: :rel_trg,
  related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, general_hyponyms: :rel_gen,
  comporomise_hyponyms: :rel_com, part_of_meronyms: :rel_par, frequent_followers: :rel_bga,
  frequent_predecessors: :rel_bgb, related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
  related_homophones: :rel_hom,consonant_match: :rel_cns
}   end
# module Questions
#   def which_one
#     ask("which one")
#   end
#   def where_togo
#     ask("where to go next?")
#   end
#   def self.what
#       ask("what one")
#   end
# end
module Questions
  def self.which
    ask("which #{self}?")
  end
    def self.what
    ask("what #{self}?")
  end
end
class Params
  attr_reader :param_hash
  def self.param_hash
    datamuse_param_hash = {QUERY_PARAMS[Questions.which.to_sym] => Questions.what}
  end
end





