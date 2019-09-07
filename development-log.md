4/09/2019 / Wenesday 
1st approach to coding a feature menu. I 

4/09/2019 / Wenesday AM to Wenesday PM.

2nd approach at coding a navigational menu in a terminal (after struggling for soooooooo long trying to figure out how!). 
The user would simply choose menu options via inputting the corresponding number listed next to it.
Below is a code snippet of the hardcoded model including my ocd dev notes/comments. Just before this milestone i had fully 
accepted the 'fact' that i would be producing an incomplete application based on something im extremely passionate about.
Man did the victory taste sweet. Although i was kicking mysef that i overlooked such a simple solution.

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

# 4/09/2019 / Thursday 2am.
This version of the menu works fine but i havnt thought of how the user is going to return back to the menu after selecting a feature (lol).
Im struggling to find a way to return the user to the main menu so they can continue navigating.
Once a user selects an option the menu just disappears and there's was no way for the user to return to currently return to it. 

I've tried to edit the case statement (below) which controls the functionality of my menu. But it's starting to look really ugly
and i know for sure that there has to be a far easier way, im just overthinking things again.Im going to look back to the canvas
content and see if matt or jordan let any good hints there. The hardest part though is that there we havnt covered any examples of menu creation in the terminal.

# 4/09/2019 Thursday 8am
I tried to go to sleep at 3am but i literally couln't stop thinking about this damn menu!
I was stressing big time about looking silly with an incomplete application but i finally had a sensible idea after an hour of tossing around in bed.
I'm not going to exaggerate on this too much because the solution is embarrassingly simple. Yup, a loop. hahahahahahahhah far out coding is cruel mistress.


# 4/092019 Thursday 1pm 

Halfway MIlestone!! I'm flying through these features now after completing the menu however after wasting so much time on the menu this is 
still going to be down to the wire. I'm really fixed on achieving all these features and im going to pull another all-nighter
to get them done. Motivation isn't hard when the application idea is something i care about. Im gonna get this done by friday 
no matter what. I may not be that good at coding but i know i'm damn good at not giving up.







