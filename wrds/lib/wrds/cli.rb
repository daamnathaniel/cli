require 'highline'

class CLI

    def self.initialize
      @entry = {}
      @modifiers = {means_like: :ml, sounds_like: :sl, spelled_like: :sp}
    end

    def self.intro
	puts %( wrds: find words
	--------------------------
	In order to find words that...
	    -- sound_like [apples],
	    -- are spelled_like [monkey], or
	    -- are similar_to [table]...
	    ...one must choose a modifier, then select a word. 
	--------------------------)
    end

    def self.get_entry
      @entry[:modifiers] = ask("choose a modifier: ")
      @entry[:word] = ask("select a word: ")		   
    end

    def self.showOff(list)
       display = list.is_a?(Hash) ? list.keys : list.is_a?(Array) ? list : []
       puts "#{display[1]} #{display[2]} #{display[3]} #{display[4]}"
    end

    def self.call
      intro
      showOff(list) 
      get_entry
    end	

end

c = CLI.new
c.call
puts c.intro
require 'highline'

class CLI

    def self.initialize
      @entry = {}
      @modifiers = {means_like: :ml, sounds_like: :sl, spelled_like: :sp}
    end

    def self.intro
	puts %( wrds: find words
	--------------------------
	In order to find words that...
	    -- sound_like [apples],
	    -- are spelled_like [monkey], or
	    -- are similar_to [table]...
	    ...one must choose a modifier, then select a word. 
	--------------------------)
    end

    def self.get_entry
      @entry[:modifiers] = ask("choose a modifier: ")
      @entry[:word] = ask("select a word: ")		   
    end

    def self.showOff(list)
       display = list.is_a?(Hash) ? list.keys : list.is_a?(Array) ? list : []
       puts "#{display[1]} #{display[2]} #{display[3]} #{display[4]}"
    end

    def self.call
      intro
      showOff(list) 
      get_entry
    end	

end

c = CLI.new
c.call
puts c.intro



require 'highline/import'

MODS = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12}



class R

	def initialize(**args)
	  @e = {}
	  @e[:a] = ask("which: ")
	  @e[:b] = ask("why: ")
	  @e[:c] = ask("where: ")
	end
end 
