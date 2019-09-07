# MH-Kit Ruby CLI Application
My third week in to [Coderacademy](https://coderacademy.edu.au/)'s Fast Track Bootcamp, the crew and I were tasked with building our first terminal application with Ruby. The application was an individual assessment and we were given four days to create a CLI project of any sort, and it was indeed a very challenging but intensely rewarding week. Below is a brief of my own project **"MH-Kit"**

# Background Description & Motivation
- The reason programming caught my eye to begin with was because of its capabilities to create a positive impact in this world and help people. 
- While this app won't really help anyone in the real world,  it’s a step towards that burning desire and a spark for the ideas engine.
- With 'RUOK' day around the corner i have themed my application around mental illness.

# Application Description
**'MH-Kit'** is essentally a virtual mental health toolkit with the purpose of helping a user get back on their feet when times get tough. The target audience is broad due to mental illness being a global problem. However the user stories were written from the perspective of people who regularly attend a GP.
# Application Design Process
###### 1st Problem Identified:
The first problem identified was that self help can be hard when the user is feeling down and lacking a healthy outlook. It is hard for them to think of healthy activities themselves when their in this state and don’t have a healthy perspective to do so themselves.
###### Solution:
Therefore the applications purpose is to improve the users mood via recommending a guide of science-backed healthy activities for them via the 'Activities Guide' feature.
###### 2nd Problem Identified:
It is sometimes hard for someone with a mental disorder to recall their moods accurately when their GP / Psychiatrist asks them these type of questions.
###### Solution:
Features such as a Mood Journal & Mood Chart were included so the user can help their GP give a more accurate diagnosis. Charting their mood allows them and the GP to see patterns in their life and a way to monitor their own progress.

# Functionality and Features
**'MH-Kit'** was designed with the simplest application usabilty in mind. After the user has entered their name via text input, the user can navigate purely with directional keyboard inputs. From the welcome screen the user will be informed with a brief description of MH-Kit and be prompted for their name.

![MH-Kit Welcome Screen](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/welcome-screen.png?raw=true)

Upon entering their name the initial welcome screen will be cleared and the main menu will be displayed showing three options / features.

1. Activity Guide 
2. Mood Journal 
3. Weekly Mood Chart
4. Mental Health FAQ's
5. Exit

![MH-Kit-Start-Menu](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/start-menu.png?raw=true)

**The following are screenshots of each feature:**

![MH-Kit Activity Guide](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/activity-Guide.png?raw=true)

![MH-Kit Mood Journal](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal.png?raw=true)
- **Mood Journal.** Input of a daily mood rating / assesment is done via directional keys on a slider style feature.

![MH-Kit less3 MJ Qoutes](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal-less-three.png?raw=true)
- If the user enters less then three a list of 'inspiring' qoutes are displayed.

![Mood-Journal-Over-Three](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal-over-three.png?raw=true)

- Input above three. Each time a feature is interacted with, the menu is re-displayed, easing navigation.

![weekly-mood-chart](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/weekly-mood-chart.png?raw=true)
- **Weekly Mood Chart.** Incorporates a simple format with 1-10 mood ratings and days of the week.

![fact-table](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/fact-table.png?raw=true)
The idea of the **FAQ Table** is to let the user know they are not alone in the fight.

# Initial prototype features & ideas
Before the final product listed above, i had implented a number of features before purging them in the pursuit of satisfying my user story / client requirements. Some features that were initially incorporated included:

- **Text input menu navigation.** Initially i had hardcoded the menu (after struggling for 1 and a half days pulling my hair trying to figure out how!). The user would simply choose menu options via inputting the corresponding number listed next to it. Below is a (apologetically long) code snippet of the hardcoded model including my overboard dev notes/comments. 

```ruby

class Menu
  attr_reader :quit 

  def initialize(*menu_opt) #when ruby see's a splat it turns all the values into an array for me and eliminates the need to  include all the menu args. I used this as it seemed like a DRYer approach
    @menu_opt = menu_opt #array of strings (strings = menu options)
    @quit = @menu_opt.length #setting the 'quit' option to menu.length will allow me to easily add features to the menu without having to change the value of quit as long as 'quit' is the last item / same value as the menu item length.
  end


  def get_user_choice #needs to: 1.print out menu, 2.ask user for choice_value and 3.return value they chose.

    @menu_opt.each_with_index do |menu_item, index|         # print menu
      puts "#{index + 1}. #{menu_item}" #numbers menu-options/items.
    end
    
    #prompt user for choice
    print "Enter your choice: "   
    user_choice = gets.to_i
    puts #need this to insert line space between 'choice selection' & 'choice result/return' for aesthetic purposes.


    #returns/outputs user_choice
    return user_choice
  end
end


menu = Menu.new( #rather then incorparating menu items/parameters in standard single line format i chose to sacrifice some bytes and use this option so that for someone reading the code, it can be easily distinguished as a menu.
  "Launch Activity Guide.",
  "View Progress.",
  "Mental Health FAQ'S.",
  "Quit MH-Kit." #after user inputs a menu-option it will display/return the choice they made via the puts strings i have included below in the case statement.
)

```

# Code Structure / Modules
To be updated...

# Required Ruby Gems / Specs / Dependencies
## GEM
  remote: https://rubygems.org/
  specs:
    ascii-charts (0.9.3)
    colorize (0.8.1)
    rainbow (3.0.0)
    strings-ansi (0.1.0)
    terminal-table (1.8.0)
    unicode-display_width (~> 1.1, >= 1.1.1)
    tty (0.1.0)
    tty-cursor (0.7.0)
    tty-progressbar (0.17.0)
    strings-ansi (~> 0.1.0)
    tty-cursor (~> 0.7)
    tty-screen (~> 0.7)
    unicode-display_width (~> 1.6)
    tty-screen (0.7.0)
    unicode-display_width (1.6.0)

## PLATFORMS
  ruby

## DEPENDENCIES
  ascii-charts (~> 0.9.2)
  colorize (~> 0.8.1)
  rainbow (~> 3.0)
  terminal-table (~> 1.8)
  tty
  tty-progressbar

## BUNDLED WITH
   2.0.2
   
To be updated...

# Application Build Status
To be updated...

# User Instructions
To be updated...

# Design and Planning
To be updated...

# Libary of Planning Progress
To be updated...

# Project Timeline
To be updated...

# Testing
To be updated...
(Insert description of unit testing proccesses)
(Insert Screenshots of unit testing proccesses)


# Accesibility 
Currently Planning to spend time researching https://www.w3.org/WAI/standards-guidelines/wcag/
To be updated...

# Copyright, ethical and social issues:
From a copyright perspective i have put in research in case the name of this application "MH-Kit" infringed any copyright laws of other health applications currently released. I have not seen anything with a name close to "MH-Kit" and therefore have confidence that my application is complient.

Ethical issues to be updated...
Social issues to be updated...

# User Stories
- As a user i want an application that can recommeded a guide of healthy activities to enhance my mood when i am not in the right frame of mind to think of such things myself.

- As a user i want an application that appears personalised to me.

- As a user i want to be able to log my moods daily.

- As a user i want to be able to record and reflect on my daily moods in an easy to understand format.

- As a user i want to provide better quality feedback to my GP without having to rely on active recall.
