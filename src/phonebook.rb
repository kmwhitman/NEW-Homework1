class PhoneBook
    def initialize
        @entries = []  # Array to store phonebook entries
    end

    # Adds a new entry to the phonebook
    def add(name, number, is_listed)
     # Check if name already exists
    @entries.each do |entry|
      return false if entry[:name] == name
    end

    # Check if number is in correct format ***-***-****
    unless number.match(/^\d{3}-\d{3}-\d{4}$/)
      return false
    end

    # If adding as listed, check if number is already listed
    if is_listed
      @entries.each do |entry|
        return false if entry[:number] == number && entry[:listed]
      end
    end

    # Add the entry
    @entries << { name: name, number: number, listed: is_listed }
    true
    end

    # Lookup phone number by name (only if listed)
    def lookup(name)
            @entries.each do |entry|
      if entry[:name] == name && entry[:listed]
        return entry[:number]
      end
    end
    nil
    end

    # Lookup name by number (only if listed)
    def lookupByNum(number)
            @entries.each do |entry|
      if entry[:number] == number && entry[:listed]
        return entry[:name]
      end
    end
    nil
    end

    # Return array of names with numbers starting with given area code (include unlisted)
    def namesByAc(areacode)
            result = []
    @entries.each do |entry|
      if entry[:number].start_with?(areacode)
        result << entry[:name]
      end
    end
    result
    end
end
