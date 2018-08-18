require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data[:gender].each do |gender, names|
    names.each do |name|
      pigeon_list[name] = {
        :gender => ["#{gender.to_s}"]
      }
    end 
  end 
  
  data.each do |attribute, data_set|
    
    data_set.each do |sub_attribute, array|
      
      array.each do |name|
        if pigeon_list[name].key?(attribute) == false
          pigeon_list[name][attribute] = [sub_attribute.to_s]
        else 
          if attribute != :gender
            pigeon_list[name][attribute] << sub_attribute.to_s
          end 
        end
      end 
      
    end 
    
  end 
  
  
  return pigeon_list
end