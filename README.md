# MH-Kit Ruby CLI Application
My third week in to [Coderacademy](https://coderacademy.edu.au/)'s Fast Track Bootcamp, the crew and I were tasked with building our first terminal application with Ruby. The application was an individual assessment and we were given *3'ish* days to create a CLI project of any sort, and it was indeed a very challenging but intensely rewarding week.

Below is a brief of my own project **"MH-Kit"** 

# Background Description & Motivation
- The reason programming caught my eye was because of its capabilities to create a positive impact in this world and help people. 
- While this app won't really help anyone in the real world,  it’s a step towards that burning desire and a spark for the ideas engine.
- With 'RUOK' day around the corner i have themed my application around mental illness.

## Application Description
**'MH-Kit'** is essentally a virtual mental health toolkit with the purpose of helping a user get back on their feet when times get tough. The target audience is broad due to mental illness being a global problem. However the user stories were written from the perspective of people who regularly attend a GP.
### Application Design Process
###### 1st Problem Identified:
The first problem identified was that self help can be hard when the user is feeling down and lacking a healthy outlook. It is hard for them to think of healthy activities themselves when their in this state and don’t have a healthy perspective to do so themselves.
###### Solution:
Therefore the applications purpose is to improve the users mood via recommending a guide of science-backed healthy activities for them via the 'Activities Guide' feature.
###### 2nd Problem Identified:
It is sometimes hard for someone with a mental disorder to recall their moods accurately when their GP / Psychiatrist asks them these type of questions.
###### Solution:
Features such as a Mood Journal & Mood Chart were included so the user can help their GP give a more accurate diagnosis. Charting their mood allows them and the GP to see patterns in their life and a way to monitor their own progress.

### Functionality and Features
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
**Activity Guide**
![MH-Kit Mood Journal](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal.png?raw=true)
**Mood Journal.** Input of a daily mood rating / assesment is done via directional keys on a slider style feature.

![MH-Kit less3 MJ Qoutes](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal-less-three.png?raw=true)
If the user enters less then three a list of 'inspiring' qoutes are displayed.

![Mood-Journal-Over-Three](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/mood-journal-over-three.png?raw=true)

Input above three. Each time a feature is interacted with, the menu is re-displayed, easing navigation.

![weekly-mood-chart](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/weekly-mood-chart.png?raw=true)
 **Weekly Mood Chart.** Incorporates a simple format with 1-10 mood ratings and days of the week.

![fact-table](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/fact-table.png?raw=true)
**Mental Health FAQ Table** The idea of the **"FAQ Table"** is to let the user know they are not alone in the fight and to raise awareness on how prominent the issue is.

# Required Ruby Gems / Specs / Dependencies
The gems / bundle required to run the application has been included in the above repository. I have chosen not to list them here in the 'readme.md' file due to readibility purposes. 

However a special mention must go to https://github.com/piotrmurach as his extensive work in the ruby community has made life far easier for beginning students like myself. I wish i looked into the features that ruby gems offer before 'wasting' valuable time trying to hardcode every function myself. His work has inspired me to one day code my own gem and give back to the community but currently i am a long way off from having the skillset to do so. 

# User Instructions ('Help File' as per the assessment Rubic)
1.Follow these instructions to download and install [ruby](https://www.ruby-lang.org/en/documentation/installation/) on your computer.

2.Download and extract the zip files of this repository.

3.Open your terminal and on the command line change your directory path to the folder containing this project. Install the bundler gem (if you haven't already). 
> install bundler

4.Ask bundle to install the gems that this applications program uses via...
> bundle install 

5.In the terminal command line, navigate to the folder containing the repositories project file by inputting the command
> cd (name-of-folder-containing-extracted-repository-project-file)

6.Input the below command in the terminal command line to launch the "MH-Kit" application program.
> ruby mh-kit-source-code.rb

7.If you get an error message (usually in red) on your terminal, asking you to update your bundler, input the below in your terminal command line. (this may indicate that you do not have the correct version of bundler)
> gem update --system

8.Run program using step 6 again.

# Design and Planning
Part of the assessment criteria was to implement our understanding of algorithmic thinking applied to programming. To do this i have included a control flow digram as part of the full software development plan(found in the above repository). However due to time restraints i have opted to include my initial draft diagram. It may not be visually appealing but the logic is there. This will soon be updated via using a professional flowchart application by the name of *coggle.*

![control-flow-diagram](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/Design%20Process/algorithm-two.jpg?raw=true)

## Project Timeline
The project workload was dissected using an industry project management platform called Trello. The goals i desired to meet for this project stemmed from the assignment criteria and a more detailed time-indicated plan was included in the official software development contained in the above repository.

![trello-plan](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/assignment-one-trello-board.png?raw=true)

## User Stories
- As a user i want an application that can recommeded a guide of healthy activities to enhance my mood when i am not in the right frame of mind to think of such things myself.

- As a user i want an application that appears personalised to me.

- As a user i want to be able to log my moods daily.

- As a user i want to be able to record and reflect on my daily moods in an easy to understand format.

- As a user i want to provide better quality feedback to my GP without having to rely on active recall.

# Code Structure
I have tried to write the source code with the practice of 'self-commenting' code in mind. Despite this i have a habit of applying heavy code comments by default. It helps me consolidate the flow of the program and has been especially helpful when running on almost no sleep. 

# Initial Prototype Features, Ideas & Challenges 
*"This section isn't crucial to my assignment and may not be typically included in a readme.md file and belong to something more like a blog, but i thought i would explain the valuable lessons i have learnt. This will be painful for an experienced dev to read but have included this jargon in the hope of helping a future beginning dev like myself so they don't make the same mistakes i made."*

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
This version of the menu worked fine but then my second and most painful problem arose, i'm a beginner remember ;). I was struggling to find a way to return the user to the main menu so they could continue navigating! Once a user would select an option the menu would disappear and there was no way for the user to return to it. My first attempt at fixing this issue was to edit the case statement (below) which controlled the functionality of my menu. 

```ruby
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
```

I thought if i added a line of code below each features method in the case statement (below), that says "create a new instance of the menu class after the user has selected this option" it could fix the issue and output the menu again. 


```ruby
case user_input #user-input value was defined above and passed into this case statement.
when 1
    #functionality for 'Activity Guide' goes here.
    puts "#{activity_guide}" #test-verified.           #1: Will puts activity_guide                                            
    user_input = menu_prompt.select("Select an option", options) #3:Collect new input value so that redirection is possible.
    until user_input != 1 do     
        puts "You have already selected activity guide. Please choose another option.".colorize(:red)
        puts
        user_input = menu_prompt.select("Select an option", options)
    end
        case user_input #user-input value was defined above and passed into this case statement.
        when 1
        #functionality for 'Activity Guide' goes here.
        puts "#{activity_guide}" #test-verified.           #1: Will puts activity_guide                                            
        user_input = menu_prompt.select("Select an option", options) #3:Collect new input value so that redirection is possible.
            until user_input != 1 do     
            puts "You have already selected activity guide. Please choose another option.".colorize(:red)
```

This worked! Although (with bad coding habits and a fixed mindset still to shed) after continuing with this approach for quite a while i ended up with over 100 lines of code displaying a super ugly multi-nested case statement. *face slap* 

I then wasted way to much time on googling trying to find some kind of help or similar instance i could relate this problem to.
However with almost no examples of menu driven terminal applications on the internet, i wasn't able to find anything that helped solve my problem. 

(or for any of the other numerous challenges i ran into while developing this application for that matter). (Also to note on that, that is the major reason why i am posting these long ugly code snippets and rambles...in the hope of helping someone in the future). 

With shame i'll admit i was trying to fix this for nearly a day and a half and came to the conclusion that i would fail this assessment and would make a terible dev. (This still hasn't been marked so i won't speak to soon!!)

*It wasn't until i started to believe in myself and slow down to think logically, that everything started to work!! As corny as that sounds* 

I remembered what my instructor *Matt* told me about breaking problems down, one lego block at a time to identify the root problem. So i asked myself what am i trying to do? 

("I'm trying to get the menu to **repeatedly display** underneath a feature so the user can continue navigating my app") 

*Repeat*...what does that sound like? **A loop!!** 

```ruby
#DEVNOTE: loop for repeating the menu after an option has been chosen.Needed for navigation purposes.
if user_input != 5
loop do
    user_input = menu_prompt.select("Select an option", options) #DEVNOTE:loop ends underneath my case statement below. It's purpose is to keep displaying the menu for nav purposes.
```

So i wrapped the above loop around my menu class and the heavens themselves opened up. I then spent the next hour questioning how many brain cells are left in my noggin' and if my past days in MMA took more of a toll then i thought.

# Application Build Status / Future Endeavours
The application is 99% functional. All that is left to do is to code a dateTime function to the 'mood journal' & assign it to the 'mood chart' class variable. This will be finished as soon as i find time.

This is so that i am able to collect real statistics from the 'mood journal' feature rather then the manually inputted 'dummy data' i have used to create the 'mood chart' which i have done purely for presentational purposes. 

The other note is the fact that there is one bug in the current code of the application. When the menu is first displayed and a menu option is 'entered', it doesn't run the feature. After one 'enter' input however the entire app runs smoothly and all features / functions run on the first go. This does not effect the functionality of any other code in the program and more of an annoyance / UX flaw, rather then an error.

I am intending to keep working on this application purely to consolidate my learning and will incorporate more features soon. Some ideas include a 'friends & family contact list' and a feature which includes diaphragmatic breathing techniques to lower anxiety. This may be done via a function which displays some sort of graphical timer / countdown, though more research will have to be done. 
### What Have I Learnt?
**1st lesson:** I ran into more challenges after this but they were solved much quicker, and i think it was due to the realisation that for me coding isn't something that i can attack hard and fast. I learnt that i need to slow down in order to think more logically and trust my abilty to recall what i have been taught in class. Rather then wasting time on google to end up not finding anything helpful anyways. 

**2nd lesson:** I've also learnt to try and not let stress & deadlines get to me so much, it seems to hijack my amygdala and throw logical thinking out the window. I was 'under the pump' no doubt, but if i actually worked slower and took time to think about what im trying to solve before touching the keyboard i would have gotten twice as much done. I hope this helps someone in the future.

Also a noteworthy lesson might be to not spend two hours attempting to add a screencasted GIF of my application to a readme.md file on Github and instead focus on the essential criteria that my assignment lists. *another face slap*

![jazzing-up-readme](https://github.com/fudomyo-hub/mental-health-kit/blob/master/img/giphy.gif?raw=true)
### Summary
This assignment was a lesson in dealing with fear of failure. It's not that i havn't failed in life before because believe me i've done alot of that! It's just that becoming a developer is something i'm extemely passionate about. 

There really isn't much to my program and it's not technically impressive but i am happy to of achieved everything i aimed for. Presentation day really showcased how positve the culture is in our cohort and i feel like were all a little more closer and supportive for it.

In saying that though i had a ton of fun being set loose with the skills i have learned in the first two weeks at Brisbane Coder Academy thanks to the amazing instructors Jordan and Matt. Without a doubt i know i have some way to go until i fully wrap my head around OOP programming, especially when it comes to Unit Test's and modularising my code. 

I attempted some basic unit testing on my prototype source code file, mainly focused on my original hardcoded menu class and case statement function. Unfortunately due to removing these features in later stages of development these test-cases became obsolete. After that i just couldn't find the time to apply new unit tests to my final source code. I'm sure i could have met the requirements of these practices (modularising and unit-testing) but as with alot of my cohort peers, time was the worst enemy. 

That's OK! One of the best things Coder Academy has taught the class is growth mindset. I welcome any chance to improve my code and im sure there is a way i can improve my time management skills and still get some kind of sleep in the process of future projects. I gave this assignment all the effort i could possibly give in the timeframe that was set and to me that's all that matters.

I'll definitely be making sure i put in some intense hours on codewars so i can return to github with better projects soon.

# Accesibility 
Currently Planning to spend time researching https://www.w3.org/WAI/standards-guidelines/wcag/
To be updated...

# Copyright, Ethical & Social Issues:
The features and information in this document and application is not intended as a substitute for professional medical advice, diagnosis or treatment. This application is not to be used for commercial purposes or personal gain.

From a copyright perspective i have put in research in case the name of this application "MH-Kit" infringed any copyright laws of other health applications currently released. I have not seen anything with a name close to "MH-Kit" and therefore have confidence that my application is complient.

Below are a list of resources i used to get the facts and statistics on mental heath. These organisations need to be paid more attention to and should receive better support from the government if they are at all. I personally have found times when they have been the only resource to turn to and can't praise them enough for the work they are doing and continue to do silently in the background. 

- [headspace.org.au](https://headspace.org.au/?gclid=Cj0KCQjwqs3rBRCdARIsADe1pfSWBgVcH5adQV10bSWjdI9_btexC684xrVeQh_7Hhb7ZCAqul--nP8aAqneEALw_wcB)

- [Black Dog Institute ](https://www.blackdoginstitute.org.au/?gclid=Cj0KCQjwqs3rBRCdARIsADe1pfQmhWxASMCG9yFIPFyJviUTxJKr_gxM2mapwYx1dlJYWW3casaKdTUaAlCHEALw_wcB)

- [Lifeline.com](https://www.lifeline.org.au/)

*If you experience symptoms of mental illness don't be embarrassed to speak up, it needs to stop being the elephant in the room and by doing so you will encourage others to open up aswell.*
