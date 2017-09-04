def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |quality, qualhash| #eg. color, colorhash :color ==> [array of names]
    qualhash.each do |attribute, namearray| #eg. :purple ==> [names] or "subway" ==> [names]
      namearray.each do |name|
        if result[name] == nil
          result[name] = {color: [], gender: [], lives: []}
          result[name][quality] << attribute.to_s
        else
          result[name][quality] << attribute.to_s
        end
      end
    end
  end
  result
end
