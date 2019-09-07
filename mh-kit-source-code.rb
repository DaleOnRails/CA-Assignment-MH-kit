
#---------------------------------------START-WELCOME MESSAGE------------------------------------------------------------
puts Rainbow("Hi there! Welcome to MH-Kit.").blue.italic
sleep(2)
puts "I am a virtual mental health toolkit that will help you get back on your feet when times get tough (..& hopefully score Dale a passing mark for his assignment.)\n
Self help can be hard when your down in the dumps.
I am here to try boost your mood with a guide of healthy activities when your not in the right frame of mind to think of such outlets yourself."
puts 
puts "MH-Kit also come's equipped with a Mood Journal & Mood Chart so you can help your GP give you a more accurate diagnosis. Charting your mood allows you to see patterns in your life."
puts

#-------------------------------User-Prompt-Name-----------------------------
puts "What's your name?"
name = gets.chomp.downcase 
puts 
system "clear" 

puts "Hi #{name}, what would you like to do?" #User Prompt
