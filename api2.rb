require 'tlaw'


    module Datamuse; end

   Datamuse::QUERY_PARAMETERS = {
        sounds_like: :sl, spelled_like: :sp, means_like: :ml
        }


    def shorten(word_verb)
        Datamuse::QUERY_PARAMETERS[word_verb]
    end
	class Damu < TLAW::API
	  define do
	    base "https://api.datamuse.com"

        endpoint :words do
            param %w[:sl, :sp, :ml] require: true, keyword: true
          end
	    end
	  end
