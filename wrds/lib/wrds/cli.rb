require 'highline/import'



module Wrds

  def VERSION
    %( 0.1.0 )
  end

  def self.title
    %( wrds )
  end

  def self.slogan
    %( wrds: find words. )
  end

  def self.space
    %(



    )
  end

  def self.please_choose
    %( please choose: )
  end

  def self.instructions 
    %(  
    In order to find [words] that [modify/relate_to] [word],
    you just need to type [modifier] ['word'].

    example: to find words that are [spelled_like] ['pizza'],
    just type =>  spelled_like 'pizza'
    or            sounds_like 'lazy'     
    )
  end
end

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



  class Menu
    Display.options()



wrd_key = Proc.new {|k,v| puts k}
wrd_methods = OpenStruct.new(
  related_to: :ml, sound_like: :sl, spelled_like: :sp, 
    nouns_often_described_by: :rel_jja, adjectives_often_describing: :rel_jjb, 
    related_synonyms: :rel_syn, related_triggers: :rel_trg,
    related_antonyms: :rel_ant, kind_of_hyponyms: :rel_spc, 
    general_hyponyms: :rel_gen, comporomise_hyponyms: :rel_com,  
    frequent_followers: :rel_bga, frequent_predecessors: :rel_bgb, 
    related_rhymes: :rel_rhy, approximate_rhymes: :rel_nry,
    related_homophones: :rel_hom, consonant_match: :rel_cns,
    part_of_meronyms: :rel_par
)



# class Wrd_Methods < OpenStruct; end

Wrd_Methods = OpenStruct.new(    
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





class Datamuse 
  attr_accessor :damu
  def initialize 
    @damu = Blanket::wrap("https://api.datamuse.com")
  end
  def damu
    @damu
  end
end



class Sug
  def initialize(input)
    @input = input
  end
  def suggestion
    Datamuse.new.damu.send('sug').get(params: {s: "#{@input}"})
  end
end


class Word
  def initialize(input)
    @input = input
  end
  def fetch
    Datamuse.new.damu.send('words').get(params: {})



CHARACTER_NAMES = [
  "Arthur Dent",
  "Ford Prefect",
  "Tricia McMillan",
  "Zaphod Beeblebrox",
].freeze

Readline.completion_proc = proc do |input|
  Wrd_Methods.select { |name| name.start_with?(input) }
end

puts "Who's your favourite Hitchiker's Guide character?"
input = Readline.readline("> ", false)
if input
  puts "You entered: #{input}"
end



 cmd = ask("Enter command:  ", %w[save sample load reset quit]) do |q|
    q.readline = true
  end
  say("Executing \"#{cmd}\"...










MenuOptions = OpenStruct.new(
  start_over: {exec CLI.new.start}, exit: {exec exit}

  )








class CLI
  extend Wrds

  def self.start
    puts Wrds::title
    puts Wrds::slogan
    puts Wrds::space
    menu
  end


  def self.menu
    puts Wrds::instructions
    Display.options(Wrd_Methods)
    
  end
end



