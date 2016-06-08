pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

#level 1 attributes: color, gender, lives
#level 2 attributes: purple...male...subway...
#level 3 attributes: name

def nyc_pigeon_organizer(data)
  organize = {}
  data.each do |trait, detail|
    detail.each do |info, names|
      names.each do |name|
        if !organize[name]
          organize[name] ={}
        end
        if !organize[name][trait]
          organize[name][trait] = []
        end
        organize[name][trait] << info.to_s
      end
    end
  end
  organize
end
