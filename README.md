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
**"Activity Guide"**
![MH-Kit Mood Journal](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal.png?raw=true)
- **Mood Journal.** Input of a daily mood rating / assesment is done via directional keys on a slider style feature.

![MH-Kit less3 MJ Qoutes](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal-less-three.png?raw=true)
- If the user enters less then three a list of 'inspiring' qoutes are displayed.

![Mood-Journal-Over-Three](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal-over-three.png?raw=true)

- Input above three. Each time a feature is interacted with, the menu is re-displayed, easing navigation.

![weekly-mood-chart](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/weekly-mood-chart.png?raw=true)
- **Weekly Mood Chart.** Incorporates a simple format with 1-10 mood ratings and days of the week.

![fact-table](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/fact-table.png?raw=true)
**"Mental Health FAQ's"** The idea of the **FAQ Table** is to let the user know they are not alone in the fight and to raise awareness on how prominent the issue is.

# Required Ruby Gems / Specs / Dependencies
The gems / bundle required to run the application has been included in the above repository. I have chosen not to list them here in the 'readme.md' file due to readibility purposes. 

However a special mention must go to https://github.com/piotrmurach however as his extensive work in the ruby community has made life far easier for beginning students like myself. I wish i looked into the features that ruby gems offer before 'wasting' two days trying to hardcode every function myself. His work has inspired me to one day code my own gem and give back to the community but currently i am a long way off from having the skillset to do so. 

# User Instructions
1. Follow these instructions to download and install [ruby]https://www.ruby-lang.org/en/documentation/installation/ on your computer.

2. Download and extract the zip files of this repository.

3. Open your terminal and on the command line change your directory path to the folder containing this project. Install the bundler gem (if you haven't already). 
> install bundler

4.Ask bundle to install the gems that this applications program uses via...
> bundle install 

5.In the terminal command line, navigate to the (...) folder by inputting the command
> cd (...)

6.Input the below command in the terminal command line to launch the "MH-Kit" application program.
> ruby main.rb

7. If you get an error message (usually in red) on your terminal, asking you to update your bundler, input the below in your terminal command line. (this may indicate that you do not have the correct version of bundler)
> gem update --system

8 Run program using step 6 again.

AUTHOR NOTE: DOUBLE CHECK THIS PROCCESS BEFORE RELEASE!!!!

# Design and Planning
To be updated...

# Record of Planning Progress
To be updated...

# Project Timeline
To be updated...

# Testing
To be updated...
(Insert description of unit testing proccesses)
(Insert Screenshots of unit testing proccesses)

# Code Structure / Modules
To be updated...

# Initial Prototype Features, Ideas & Challenges
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
This version of the menu worked fine but then my second and most painful problem arose (I'm a beginner remember ;) ). Once a user 

# Application Build Status / Future Endeavours
The application is %99 functional. All that is left to do is to code a dateTime function to the 'mood journal' & assign it to the 'mood chart' class variable. This will be finished one day from now on sunday the 8/9/2019.

This is so that i am able to collect real statistics from the 'mood journal' feature rather then the manually inputted 'dummy data' i have used to create the 'mood chart' which i have done purely for presentational purposes. 

The other note is the fact that there is one bug in the current code of the application. When the menu is first displayed and a menu option is 'entered', it doesn't run the feature. After one 'enter' input however the entire app runs smoothly and all features / functions run on the first go. This does not effect the functionality of any other code in the program and more of an annoyance / UX flaw, rather then an error.

I am intending to keep working on this application purely to consolidate my learning and will incorporate more features soon. Some ideas include a 'friends & family contact list' and a feature which includes diaphragmatic breathing techniques to lower anxiety. This may be done via a function which displays some sort of graphical timer / countdown, though more research will have to be done. 

# Accesibility 
Currently Planning to spend time researching https://www.w3.org/WAI/standards-guidelines/wcag/
To be updated...

# Copyright, Ethical & Social Issues:
The features and information in this document and application is not intended as a substitute for professional medical advice, diagnosis or treatment. This application is not to be used for commercial purposes or personal gain.

From a copyright perspective i have put in research in case the name of this application "MH-Kit" infringed any copyright laws of other health applications currently released. I have not seen anything with a name close to "MH-Kit" and therefore have confidence that my application is complient.

# User Stories
- As a user i want an application that can recommeded a guide of healthy activities to enhance my mood when i am not in the right frame of mind to think of such things myself.

- As a user i want an application that appears personalised to me.

- As a user i want to be able to log my moods daily.

- As a user i want to be able to record and reflect on my daily moods in an easy to understand format.

- As a user i want to provide better quality feedback to my GP without having to rely on active recall.
