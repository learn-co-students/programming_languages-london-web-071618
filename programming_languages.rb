
  def reformat_languages(languages)
  new_hash = {}
    languages.each do |language_style, language_data|
      language_data.each do |name, type|
        type.each do |type_key, type_value|
          if !new_hash[name]
           new_hash[name] = {type_key => type_value, :style => [language_style]}
          else
            new_hash[name][:style] << language_style
          end
        end
      end
    end
  return new_hash
end

