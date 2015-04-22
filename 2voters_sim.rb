#voters_sim.rb


class Voters
	@@voters = []
	attr_accessor :name, :politics
	
	def initialize(name, politics)
	@name = name
	@politics = politics3
	@@voters << self
end

def self.votrs_all
	@voters
end

class Politians 
	@@politians = []
	attr_accessor :name, :party
	def initialize(name, party)
		@name = name
		@party = party
	end

end


def test
	#voters
	me = Voters.new("Carlos", "Liberal")
	p me.name== "Carlos"
	p me.politics=="Liberal"
	voter1 = Voters.new("Hugo", "Socialist")

end

	#Politians
	# politian1= Politians.new("Marco Rubio", "Republican")
	# politian2= Politians.new("Hilary Clinton","Democrat")

	# p politian.name== "Marco Rubio"
	# p politian.party== "Republican"
	


def create_voter
	p "Voter's name?"
  Voters.new(gets.chomp.capitalize)
	p "Voter's Politics?"
  Voters.new(gets.chomp.capitalize)
end

# def create_politian
# 	p "Politician name?"
# 	Politician.new(gets.chomp.capitalize)
# 	p "Politician party?"
# 	Politician.new(gets.chomp.capitalize)
# end

# loop do
#   puts "What would you like to do? Create, List, Update, or Vote"
#   case gets.chomp.capitalize
#   	when "Create"
#   		p "What would you like to create? Politician or Person"
#   		if gets.chomp.capitalize== "Politician" do 
#   		create_politian
#   		elsif gets.chomp.capitalize== "Person" do 
#   		create_voter
#   		else
#       #need to loop
#   		end

  	# when "List"
#   	p "list"
#   	when "Update"
#   	p "Update"
#   	when "Vote"
#   	p "Vote"
#   	else
#   	#need to loop
# 	end
# end

test