
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
    
    def mood_journal #collects 'mood stats' which will be used in the other menu option 'mood chart'.
    puts
    puts Rainbow("> Use the Mood Journal to give a global assessment of your mood on a day-to-day basis.").blue.italic
    puts
    puts "With consistent use, you'll be able to make the most out of your visits to your GP."
    puts
    puts "You will also be able to monitor your progress and recall your mood statistics with the MH-Kits Mood Chart (found in the menu)"
    puts
    mood_prompt = TTY::Prompt.new
    mood_value = mood_prompt.slider("How are you feeling today? (1 being the worst and 10 being your best) :", min: 1, max: 10,  step: 1)

    puts "You chose #{mood_value}, your recording has been logged." #feedback to user
    if mood_value < 5 #DEVNOTE: mood_value = user input
        puts Rainbow("Sound's like it's been a rough day. I have collected some inspiring qoutes that might make you feel better. You got this!").green.italic
        puts 
        puts Rainbow("The grass is greener where you water it. – John Lennon").blue.italic
        puts
        puts Rainbow("The sun is a daily reminder that we too can rise again from the darkness, that we too can shine our own light- Rumi").blue.italic
        puts
        puts Rainbow("Although the world is full of suffering, it is also full of the overcoming of it.– Helen Keller").blue.italic
        puts
        puts Rainbow("Is our past a mistake? No. The only mistake we can make is mistaking that for the truth– The Fairy Godmother").blue.italic #the fairy god mother?
        puts
        puts Rainbow("If love is universal, no one can be left out. – Deepak Chopra").blue.italic
    else 
        puts Rainbow("I'm so glad your feeling better, keep up the great work!").blue.italic
end
end
