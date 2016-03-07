@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

#Adding a state to the hash of states

@states['NV'] = "Nevada"
p @states

@cities = {

	OR: ['Portland','Eugene','Salem'],
	FL: ['Miami','Tampa','Jacksonville'],
	CA: ['Los Angeles','San Franscisco','Sacramento'],
	NY: ['Buffalo','Rochester','New York'],
	MI: ['Detroit','Flint','Dearborn'],
	NV: ['Las Vegas','Reno','Sparks']

}

p @cities

def describe_state(code)
   state_code = code.to_sym
   long_code = @states[state_code]
   cities = @cities[state_code]
   p "#{long_code} is a great state its cities are #{cities.join(", ")}"
end

describe_state("CA")

# hash taxes

@taxes = {
      
      OR: 7.5,
      FL: 10.0,
      CA: 12.5,
      NY: 15.5,
      MI: 22.9,
      NV: 12.6
}

def calculate_tax(code, dollar_amount)
	state_code = code.to_sym
	
	taxes = @taxes[state_code]
	tax_amount = (dollar_amount * (taxes * 0.01))
	p "#{state_code} has a tax rate of #{taxes}"
	p "You spent $#{dollar_amount} in #{state_code} your final taxes are $#{tax_amount.round(2)}"
end

calculate_tax("FL", 1555)

# finding the state of the city

def find_state_for_city(cityName)
    @cities.each do |x, y|
    	y.each do |z|
			if z == cityName
				puts "That #{cityName} is part of a state called #{x}"
	    	end
	    end
	end
end

find_state_for_city("Miami")