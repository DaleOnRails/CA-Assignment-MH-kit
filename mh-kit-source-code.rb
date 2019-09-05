#---------------------------------------------colour-code-key-for-future-editing----------------------------------------------------
#blue/italic for headings and featured content such as qoutes.
#green/italic for prompts.
#red for tabe heading cells.
#Dont need yellow or red for errors because i made it impossible for the user to crash my program. HOPEFULLY ;)
#-------------------------------------------------GEMS-------------------------------------------------------------
require 'tty-prompt' #used for creating a menu class
require 'terminal-table' #used to display facts and activity guide
require 'colorize' #colour for table
require 'rainbow' #italic font style for text
require 'tty-progressbar' #aesthetic loading bar displayed before start menu
require 'ruby_figlet' #displays my pimpin' title
require 'ascii_charts' #displays stat data for mood chart
#---------------------------------------MH-KIT-TITLE------------------------------------------------------------
system "clear" #will clear users last session of MH-Kit.

using RubyFiglet #Displays Below title text as ascii art.
title = "Welcome   to   MH-Kit!"
title.art!
puts title
puts
puts
sleep(1)

#---------------------------------------START-WELCOME MESSAGE------------------------------------------------------------
puts Rainbow("Hi there! Welcome to MH-Kit.").blue.italic
sleep(2)
puts "I am a virtual mental health toolkit that will help you get back on your feet when times get tough (..& hopefully score Dale a passing mark for his assignment.)\n
Self help can be hard when your down in the dumps.
I am here to try boost your mood with a guide of healthy activities when your not in the right frame of mind to think of such outlets yourself."
puts #TEST-VERIFIED
puts "MH-Kit also come's equipped with a Mood Journal & Mood Chart so you can help your GP give you a more accurate diagnosis. Charting your mood allows you to see patterns in your life."
puts
sleep(1)
#-------------------------------User-Prompt-Name-----------------------------
puts Rainbow("What's your name?").blue.italic
name = gets.chomp.downcase 
puts 
@bar = TTY::ProgressBar.new("loading [:bar]", total: 15) #DEVNOTE: Placement of progress bar is here so it looks like it is loading the menu.
system "clear" 

puts "Hi #{name}, what would you like to do?".blue.italic #TEST-VERIFIED

#---------------------------------Progress-Bar-method-For-Aesthetics---------
def progress_bar
  end
  8.times do 
    sleep(1)
    @bar.advance(4)
  end

progress_bar
#------------------------------Main-Menu-START--------------------------------------------------
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
    user_input = menu_prompt.select("Select an option", options) #DEVNOTE:loop ends underneath my case statement below. It's purpose is to keep displaying the menu for nav purposes.

#-----------------------------------------------'activity-guide-table'-(menu-method)-------------------

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

#---------------------------------------------------mood-input-(menu-method)----------------------------
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
        puts #corny i know.
        puts Rainbow("The grass is greener where you water it. – John Lennon").blue.italic
        puts Rainbow("The sun is a daily reminder that we too can rise again from the darkness, that we too can shine our own light- Rumi").blue.italic
        puts Rainbow("Although the world is full of suffering, it is also full of the overcoming of it.– Helen Keller").blue.italic
        puts Rainbow("Is our past a mistake? No. The only mistake we can make is mistaking that for the truth– The Fairy Godmother").blue.italic #the fairy god mother?
        puts Rainbow("If love is universal, no one can be left out. – Deepak Chopra").blue.italic
    else 
        puts Rainbow("I'm so glad your feeling better, keep up the great work!").blue.italic
end
end
#----------------------------------------------------mental-health-FAQ-table(menu-method)------------------
def health_facts
    sleep(1)
    puts Rainbow("> Learn more about mental health with these facts below.").blue.italic

#DEVNOTE: table for mental health FAQ's section
table = Terminal::Table.new do |t|
  t.add_row ["Fact 1".colorize(:red), "Around 20% of the world's children and adolescents have mental disorders or problems."]
  t.add_row ["Fact 2".colorize(:red), "Stigma and discrimination against patients and families prevent people from seeking mental health care."]
  t.add_row ["Fact 3".colorize(:red), "Financial resources to increase services are relatively modest."]
  t.add_row ["Fact 4".colorize(:red), "Each year, approximately one in every five Australians will experience a mental illness"]
  t.add_row ["Fact 5".colorize(:red), "It is estimated about 45% of Australians may experience mental illness at some point in their lives"]
  t.add_row ["Fact 6".colorize(:red), "Prevalence of mental illness decreases with age, with prevalence greatest among 18-24 year olds"]
  t.add_row ["Fact 7".colorize(:red), "Many violent people have no history of mental disorder and most people with mental illness (90%) have no history of violence."]
  t.add_row ["Fact 8".colorize(:red), "In Australia, the prevalence of mental or behavioural disorders among people born overseas is similar to those born in Australia"]
  t.add_row ["Fact 9".colorize(:red), "Limited research suggests Aboriginal and Torres Strait Islander peoples experience mental disorders at least as often as other Australians"]
  t.add_row ["Fact 10".colorize(:red), "In any one year, around 1 million Australian adults have depression, and over 2 million have anxiety."]
  puts 
  puts "You are not alone. If you or someone else you know needs help, call lifeline australia on 13 11 14.".colorize(:red)

  t.style = {:all_separators => true, :border_x => "=".colorize(:blue)} #DEVNOTE: table styling.  
end
end

#-----------------------------------------Mood-Chart-Statistics-(menu-method)------------------------------

def mood_chart                            #---IMPORTANT DEVNOTE BELOW!!!:---
    sleep(1) #i could assign the (mood_journal) variable to this class and therefore display real statistics however due \n
    #...to lack of a database i have chosen to use fake data so that i am able to display the capabilites of my application. \n
    #...If im correct i could store variable data without a database via a session logging gem, but due to presentation purposes i have chosen to do this.
    puts
    puts AsciiCharts::Cartesian.new([["Mon", 1], ["Tue", 3], ["Wen", 6], ["Thu", 5], ["Fri", 4], ["Sat", 10], ["Sun", 8]], :bar => true, :hide_zero => true, :title => "Your Weekly Mood Statistics").draw.colorize(:blue)
end
#------------------------------------------Main-Menu-Functionaity-------------------------------------------

case user_input #DEVNOTE: user-input value was defined above and passed into this case statement.
when 1
    puts "#{activity_guide}" #test-verified.                                                
when 2
    puts "#{mood_journal}"                                                     
when 3
    puts "#{mood_chart}"
when 4
    puts "#{health_facts}"                                                                                                    
when 5 
    return
end
end #DEVNOTE: this is the end for the loop defined in menu instance section
end
