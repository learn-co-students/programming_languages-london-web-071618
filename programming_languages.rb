require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here

new_hash = {}

#The difference between the two hashes is newly built hash has another nested key-value pair and that some languages now share attributes of :oo and :functional
#We can directly manipulate this to save time. (DRY Coding)

languages.each do |style_of_lang, data|       #Here style_of_lang is the style of the language OO or Functional 
  data.each do |k,v|      #Here k is the name of the language. Note that the old hash already has the type key thus we only neeed to work with the new key, style.
  
    if new_hash.has_key?(k) #Check if the key already exists in new_hash, if it does we only need to create :style
         new_hash[k][:style] << style_of_lang
       else 
         new_hash[k] = v  #the new hash equates v which is the second iteration level to languages hash
         new_hash[k][:style] = [style_of_lang]
       end
     end
    end 

new_hash
  
end