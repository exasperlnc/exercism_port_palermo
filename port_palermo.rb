module Port
  Port::IDENTIFIER = :PALE  

  def self.get_identifier(city)
    # edge case city name is less than 4
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier.to_s =~ /OIL/ || ship_identifier.to_s =~ /GAS/
      return :A 
    else
      return :B 
    end
  end
end
