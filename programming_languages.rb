def reformat_languages(languages)
  # your code here
  answer_hash = {}
    languages.each do |language_type, language_hash|
      language_hash.each do |language_name, type_hash|
        type_hash.each do |type_k, type_v|
          if !answer_hash[language_name]
           answer_hash[language_name] = {type_k => type_v, :style => [language_type]}
          else
            answer_hash[language_name][:style] << language_type
          end
        end
      end
    end
  answer_hash
end
