
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
#------------------------------------Menu-Class--------------------------------
menu_prompt = TTY::Prompt.new #DEVNOTE:creates new instance of the 'prompt class' which i have defined as the variable 'menu_prompt'

options = [
    {name: "Launch Activity Guide", value: 1},
    {name: "Mood Journal", value: 2},
    {name: "Weekly Mood Chart", value: 3},
    {name: "Mental Health FAQ's", value: 4},
    {name: "Exit", value: 5}
]
user_input = menu_prompt.select("Select an option", options)

#DEVNOTE: loop for repeating the menu after an option has been chosen.Needed for navigation purposes.
if user_input != 5
loop do
    user_input = menu_prompt.select("Select an option", options) #DEVNOTE:loop ends underneath my case statement below. It's purpose is to keep displayi

    def activity_guide #activity_guide is my method. It's variable also has the same name for dev readibility purposes (self-commenting-code).
    puts Rainbow("> Below are a list of ways you can get rid of those blues. Give them a try!").blue.italic
    puts 
#DEVNOTE: table for activities-section
    table = Terminal::Table.new do |t|
    t.add_row ["Meditate".colorize(:red), "Meditation is especially beneficial for reducing stress! Studies show it can also reduce depression and anxiety, and help people manage chronic pain."]
    t.add_row ["Art".colorize(:red), "Artistic outlets affect our brains in complex ways, stimulating the limbic system and moderating our response to stressful stimuli."]
    t.add_row ["Exercise".colorize(:red), "Exercise makes you feel good because it releases chemicals such as endorphins and serotonin that improve your mood."]
    t.add_row ["Socializing".colorize(:red), "Interacting with others boosts feelings of well-being and decreases feelings of depression."]
    t.add_row ["Cooking".colorize(:red), "Mental health experts credit cooking with helping to relieve depression, anxiety, eating disorders, and other conditions"]
    t.add_row ["Coding".colorize(:yellow), "Because...code?"]
    t.style = {:all_separators => true, :border_x => "=".colorize(:light_green)}
end 
end
