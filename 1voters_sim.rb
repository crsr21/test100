#voters_sim.rb


class Person
	@@people = []
	attr_accessor :name, :politics
	
	def initialize(name, politics)
	@name = name
	@politics = politics
  end
  # def create_person
  #   puts "Name?"
  #   name_input = gets.chomp.capitalize
  #   @name = name_input
  #   puts "Politic?"
  #   politics_input = gets.chomp.capitalize
  #   @politics= politics_input
  # end

end

class Politician
  @@politicians = []
  attr_accessor :name, :party
  def initialize(name, party)
    @name = name
    @party = party
  end
  def create_politician
    puts "Name?"
    name_input = gets.chomp.capitalize
    @name = name_input

    puts "Party?"
    party_input = gets.chomp.capitalize
    @party= party_input

   @@politicians << Politician.new 
   p @@politicians 
  end

end


def create

  puts "Who do you want to create (Politician or Person)"
  create_input= gets.chomp.downcase
  if create_input.include? "politician" 
    p @@politicians
  elsif create_input.include? "person"
    create_person
  else
    create
  end
end

def main_menu

puts "          Main Menu:
    What would you like to do? 
-- Create, List, Update, or Vote --"
  case gets.chomp.capitalize
    when "Create"
      create
    when "List"
      list
    when "Update"
      update
    when "Vote"
      vote
    else
      main_menu
  end
end

main_menu






# def test
# 	#voters
# 	me = Voters.new("Carlos", "Liberal")
# 	p me.name== "Carlos"
# 	p me.politics=="Liberal"
# 	voter1 = Voters.new("Hugo", "Socialist")

# end

	#Politians
	# politian1= Politians.new("Marco Rubio", "Republican")
	# politian2= Politians.new("Hilary Clinton","Democrat")

	# p politian.name== "Marco Rubio"
	# p politian.party== "Republican"
	


# def create_voter
# 	p "Voter's name?"
#   Voters.new(gets.chomp.capitalize)
# 	p "Voter's Politics?"
#   Voters.new(gets.chomp.capitalize)
# end

# def create_politian
# 	p "Politician name?"
# 	Politician.new(gets.chomp.capitalize)
# 	p "Politician party?"
# 	Politician.new(gets.chomp.capitalize)
# end


  

# test