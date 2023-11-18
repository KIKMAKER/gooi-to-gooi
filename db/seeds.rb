puts "Starting database seed."
puts "Current environment is: #{Rails.env.downcase}"
load(Rails.root.join( 'db', 'seeds', "#{Rails.env.downcase}.rb"))

# Do not add any seed command to this file. Instead, go to /db/seeds/ where you will find:
# development.rb
# production.rb
# test.rb
# Add your seed code into one of those depending on the environment where you wish for it to execute.
