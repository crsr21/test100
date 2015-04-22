

# require "./Voter_Sim_Modules.rb"
# include VoterSimModule

# class Person
# end

# ##########################
# class Politician
#   attr_accessor :name ,:party
#   @@politicians=[]

#   def initialize(name, party)
#     @name=name
#     @party=party

#   end

#   def self.create_politician
#       p "Name?"
#       name=gets.chomp.downcase

#       p "Party? Democrat or Republican"

#         party=gets.chomp.downcase
#         unless party.include?("republican"||"democrat")
#           p "Party? Democrat or Republican"

#         end
#         @@politicians<<Politician.new(name, party)

#       end

# ###################

#   def self.all
#     puts @@politicians
#     @@politicians.each do |name, party|
#     puts name.to_s,party.to_s
#     end
#   end
# end

# ###################
# def main_menu
#   p "What would you like to do? Create, List, Update, or Vote"
#   menu_options=gets.chomp.downcase
# end
# ####################

# def create
#   p "What would you like to create? Politician or Person?"
#   create_options=gets.chomp.downcase

#   case create_options
#   when "politician"
#     Politician.create_politician
#   when "voter"

#   else create_options.nil?
#     p "Sorry, you have to pick SOMETHING"
#   end
# end

# ##########################

# #
# # def list
# # end
# #
# # def update
# # end
# #
# # def vote
# #
# # end
# #
# #main_menu

# loop do
#   case main_menu
#   when "create"
#     create
#   when "list"
#     Politician.all
#   when "update"
#     puts "works"
#   when "vote"
#     puts "works"
#   else main_menu.nil?
#     p "Sorry, you've got to input one of the commands"
#     puts loop
#   end
# end

# # def test

# #  # p "what would you like to create? Politician or Person"
# #  main_menu.create(politician)
# #  main_menu.create.person(name, party)
# #  politcian(name, party)
# #
# #  republicans={}
# #
# # end
# #
# # testd

# class Citizen

# end

# class Politician
# 	attr_accessor :poli_name, :poli_party
# 	@@politician=[] 

# 	def initialize(poli_name, poli_party)
# 		@poli_name=poli_name
# 		@poli_party=poli_party
# 	end#end of initialize

# 	def self.create_politician(name, party)
# 		puts "Name?"
# 		poli_name=gets.chomp
# 		puts "Party"
# 		unless poli_party.include? ("democrat" || "republican")
# 		poli_party=gets.chomp
# 	end#end of unless
# 	end#end of create politician
# 	@@politician<<Politician.new(poli_name, poli_party)
# end#end of Politician class

# class Person

# 	attr_accessor :per_name, :per_party
# 	def initialize(per_name, per_party)
# 		@per_name=per_name
# 		@per_party=per_party
# 	end#end of initialize
# end#end of person class

class Politician
  attr_accessor :name ,:party
  @@politicians=[]

  def initialize(name, party)
    @name=name
    @party=party

  end

  def self.create_politician
      p "Name?"
      name=gets.chomp.downcase

      p "Party? [1] Democrat or [2] Republican"

        party=gets.chomp.downcase
        unless party.include?("1"||"2")
          p "Party? Democrat or Republican"
		case party
			when '1'
	party = "democrat"
			when '2'
	party = "republican"
		end
        end
        @@politicians<< Politician.new(name,party) 

      end

###################


  def self.get_politician
    # @@politicians.each do |name, party|
    # 	puts @@politician(name,party)
  	puts Politician.new("#{name}, #{party}")
    # puts name.to_s,party.to_s
     # end#end of loop
 	end#end of get_politician
   end#end of class

def main_menu
	loop do 
	puts "What would you like to do: Create, List, Update, Vote?"
	main_input=gets.chomp.downcase
	
	if main_input.include? "create"
		create
	elsif main_input.include? "list"
		Politician.get_politician
	elsif main_input.include? "update"
		update
	elsif main_input.include? "vote"
		vote
	else
		puts "You got kicked out by the old people"
	end#end of if
	end#end of loop
end#end of main_menu

def create

	puts "Who would you like to create? (Politician or Person?)"
	create_input=gets.chomp.downcase
		
	if create_input.include? "politician"
		Politician.create_politician #hey Polit class we're going to use the create politician method
	elsif create_input.include? "person"
		create_person
	else 
		create
	end#end of if
end#end of create

def list
	p 
end

# def create_politician

# 	# puts "Name?"
# 	# poli_name=gets.chomp.downcase
# 	# puts "Party?"
# 	# poli_party=gets.chomp.downcase

# end
	
# def create_person

# 	# puts "Name?"
# 	# per_name=gets.chomp.downcase
# 	# puts "Party?"
# 	# @per_party=gets.chomp.downcase

# end		
			
			




# def test
	
# 	p politician_a=Politician.new("Bill", "Republican")
# 	p person_a=Person.new("Person", "Democrat")
# end
# test

p main_menu

# create a main menu...........................................
# create a create method......................................
# create a politician with a name and a party..................................
# create a person with a name and a party......................................
# list out an array??? with the person/politican and their names and party
# create update class putsing the name with new name? new party? and everything rewriteable
