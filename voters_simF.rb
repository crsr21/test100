#voters_sim.rb

######################-PERSON CLASS-##############################
class Person 
	@@people = []
	attr_accessor :name, :politics
	
	def initialize(name, politics)
	@name = name
	@politics = politics
  end #end of initialze

######create a person######
  def self.create_person
  puts "--------------------------------------
Name?"
  name= gets.chomp.capitalize

  puts "Politic?: Liberal, Conservative, Tea Party, Socialist, or Neutral" 
  politics= gets.chomp.downcase

    until politics== "liberal" || politics=="conservative" || politics=="tea party" || politics=="socialist" || politics=="neutral"
    puts "Politic?: Liberal, Conservative, Tea Party, Socialist, or Neutral" 
    politics= gets.chomp.downcase
    end #end of until

  @@people<< Person.new(name, politics)
  new_person = Person.new(name, politics)
 
  end #end of create

#######list people########
  def self.list_people
  @@people.each do |person|
  puts "Voter: #{person.name}, #{person.politics.capitalize} "
    end #end of do
  end #end of list

#######update people#######
 def self.update_person
    puts "
Who do you want to edit?
Name?"
    name_to_edit = gets.chomp.capitalize

    puts "What is the new name?"
    new_name = gets.chomp.capitalize

    puts "What is the new politics?
    Liberal, Conservative, Tea Party, Socialist, or Neutral"
    new_politics = gets.chomp.downcase

    until new_politics == "liberal" || new_politics=="conservative" || new_politics=="tea party" || new_politics=="socialist" || new_politics=="neutral"
      puts "Politic?: Liberal, Conservative, Tea Party, Socialist, or Neutral"
      new_politics = gets.chomp.capitalize
    end #end of until

    @@people.each do |person|
      puts "You changed #{person.name.capitalize}, #{person.politics.capitalize} for #{new_name.capitalize}, #{new_politics.capitalize}"
      if person.name== name_to_edit
        person.name= new_name
        person.politics= new_politics
      else
        puts "Name not found. Try again!"
      end #end of if
      end #end of do
      main_menu
    end #end of update

end #end of person class

######################-POLITICIAN CLASS-##############################

class Politician
  @@politicians = []
  attr_accessor :name, :party
  def initialize(name, party)
  @name = name
  @party = party
  end #end of initialize

#######create politician#####
  def self.create_politician
  puts "Politician name?"
  name= gets.chomp.capitalize
 
  puts "Party: Democrat or Republican"
  party = gets.chomp.capitalize

    until party == "Democrat" || party == "Republican"
    puts "Party: Democrat or Republican"
    party = gets.chomp.capitalize
    end #end of until

  @@politicians<< Politician.new(name, party)
  new_politician = Politician.new(name, party)
 
  end  #end of create

########list politicians########
  def self.list_politician
  @@politicians.each do |person|
  puts "Politician: #{person.name}, #{person.party.capitalize} "
    end #end of do
  end #end of list

########update politician#########
  def self.update_politician
  puts "
Who do you want to edit?
Name?"
  name_to_edit = gets.chomp.capitalize
  puts "What is the new name?"
  new_name = gets.chomp.capitalize

  puts "What is the new party?"
  new_party = gets.chomp.capitalize

    until new_party == "Democrat" || new_party == "Republican"
    puts "Party: Democrat or Republican"
    new_party = gets.chomp.capitalize
    end #end of until

  @@politicians.each do |person|
    puts "You changed #{person.name}, #{person.party} for #{new_name}, #{new_party}"
    if person.name== name_to_edit
    person.name= new_name
    person.party= new_party
    else
    puts "Name not found. Try again!"
    end #end of list
    end #end of do
    # main_menu #call the menu
  end #end of update

end #end of class politician

######################-CREATE-##############################
def create

puts "------------------------------------------------
Who do you want to create: (Politician or Person)"
create_input= gets.chomp.downcase

  if create_input == "politician" 
    Politician.create_politician
  elsif create_input == "person"
    Person.create_person
  else
    create #create, to loop to beginig of method create
  end #end of if
main_menu
end #end of create

#######################-LIST-#############################
def list

puts "------------------------------------------------
This is the list of voters created:"
Politician.list_politician
Person.list_people
main_menu
end #end of list

#######################-UPDATE-#############################
def update

puts "------------------------------------------------
Who do you want to update: (Politician or Person)"
update_input= gets.chomp.downcase

  if update_input == "politician"
  Politician.update_politician
  elsif update_input == "person"
  Person.update_person
  else
  update
  end #end of if
main_menu
end # end of update

#######################-VOTE-#############################
def vote
  puts "-----------------------------------------------
Sorry, voting system is currently not working"
  
end #end of vote

#######################-MAIN MENU-#############################
def main_menu

puts "------------------------------------------------          
             Main Menu:
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
  end #end of case

end #end of main_menu
#####################################################################
main_menu

