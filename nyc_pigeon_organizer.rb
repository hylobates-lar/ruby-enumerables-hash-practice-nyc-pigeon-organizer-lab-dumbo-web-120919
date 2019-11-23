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


def nyc_pigeon_organizer(data)
  # create a new main hash
  new_pigeon_hash = {}
  # look through each current hash for names
  # assign names as the main keys in the new hash
  # create new hashes as the values for the main hash
  data.each do |pair|
    attribute_category = pair[0]
    attributes = pair[1]
    attributes.each do |attribute_pair|
      names = attribute_pair[1]
      names.each do |name|
        if !new_pigeon_hash.key?(name)
          new_pigeon_hash[name] = {}
        end
      end
    end
  end
  #
  # look through current hashes for attributes that match each name
  data.each do |pair|
    attribute_category = pair[0]
    attributes = pair[1]
    attributes.each do |attribute_pair|
      attribute_type = attribute_pair[0]
      names = attribute_pair[1]
      names.each do |name|
       
        # in the new pigeon hash, for the name key
        # if attribute category doesn't exist add the attribute category as empty array
        if !new_pigeon_hash[name].key? (attribute_category)
            new_pigeon_hash[name][attribute_category] = []
        end
        # then add attribute type to the attribute category array
        new_pigeon_hash[name][attribute_category] << attribute_type.to_s
      end
    end
  end
  # assign key/value pairs to the sub hashes/values
  new_pigeon_hash
end

pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}