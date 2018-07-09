require 'pry'

def reformat_languages(languages)
 new_hash={}

languages.each do |style, language|
    
    language.each do |name, info|
      
      info.each do |type, value|
    
        new_hash[name] ||= {type: value}
        
        new_hash[name][:style] ||= [] 
        new_hash[name][:style] << style
        
     end  
  end 
end 
  new_hash
end