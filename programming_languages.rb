def reformat_languages(languages)
  new_hash = {}

  languages.each {|broad_style, language| 
    language.each {|name_lang, type| 
      if new_hash[name_lang].nil?
        new_hash[name_lang] = type
      end 
      if (new_hash[name_lang][:style]).nil?
        new_hash[name_lang][:style] = []
      end
      new_hash[name_lang][:style] << broad_style
    }
  }
  new_hash
end
