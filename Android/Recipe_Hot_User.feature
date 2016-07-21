27/07/2016:Android_Reciepe_Hot
Feature: H-E-B Cart page Recipe module feature

@Priority2 @Recipe @TC01_RECI_HU
Scenario: Recipe_Hot_User Recipe home page validation of all the elements
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes	
	# 1. Navigation bar should be titled as "Recipes"
	# 2. Hamburger icon should appear in the left-hand corner of action bar
	# 3. Recipe box icon should appear in the right-hand corner of action bar
	# 4. Search bar should be displayed below action bar
	# 5. Search bar should be displayed with default text as "Search or Scan Products" 
	# 6. Content image should be displayed below search bar
	# 7. "Quick Recipe Finder" button should be displayed at the bottom of the page.

@Priority2 @Recipe @TC02_RECI_HU
Scenario: Recipe_Hot_User Recipe page validation by giving valid input in recipe search bar
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of recipes list page
	# 1. Recipes as the Navigation bar title
	# 2. Hamburger icon in the left hand corner of navigation bar
	# 3. Recipe box in the right hand corner of navigation bar		
	# 4. Below navigation bar display red area, with "<#> recipes for <searched term>"  
	#    displayed correctly in the left side of the red section 
	# 5. Refine button in the right area should be displayed	
	# 6. Displayed with search results as: <recipe image> and <recipe name> <ratings(if any)>

@Priority2 @Recipe @TC03_RECI_HU
Scenario: Recipe_Hot_User Recipe details page validation by clicking any recipe row
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page	
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed
	# Include verification of recipe details
	# 1. Recipe name should be displayed below navigation bar and with ratings(if any) in the right
	# 2. Ingredients tab should be selected by default
	# 3. Hamburger icon should appear in the left hand corner of navigation bar
	# 4. Recipe Box icon should appear in the right hand corner of navigation bar	
	# 5. Share icon should appear to the right of Recipe Box
	# 6. User should able to scroll left to view other content images
	# 7. User should able to scroll right to return to the landing image
	# 8. Recipe image is displayed below Recipe name
	# 9. Page indicator should be displayed at bottom of image,in case of multiple images
	# 10. Log in Button should be displayed below image
	# 11. Below three sections should be displayed filled with grey color in the following order
	# a. In left of grey field, label "Prep Time" and <prep time> should be displayed
	# b. In middle of grey field, label "Cook Time" and <cook time> should be displayed 
	# c. In right of grey field, label "Serves" and <serves #> should be displayed
	# 12. Ingredients, Instructions and Nutrition Info lables should be displayed below grey field

@Priority1 @Recipe @TC04_RECI_HU
Scenario: Recipe_Hot_User verify error message for invalid search in recipe search bar
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I type invalid input search term within search field 
	And I click Search button
	Then I should see error pop-up
	# Include the error message in pop-up
	# 1. The pop up should get displayed as "No results found for (invalid search term)"

@Priority1 @Recipe @TC05_RECI_HU
Scenario: Recipe_Hot_User verify user can select background image on recipe landing screen
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	And I verify Content image below navigation bar
	# Includes verifying Content image
	# 1. Image should be displayed below search bar in Recipes Landing page
	When I select background image on Recipes Landing page
	Then I validate all the properties in Recipes List page
	# Includes verification of recipes list page
	# 1. Recipes as the Navigation bar title
	# 2. Hamburger icon in the left hand corner of navigation bar
	# 3. Recipe box in the right hand corner of navigation bar		
	# 4. Below navigation bar display red area, with "<#> recipes for <searched term>"  
	#    displayed correctly in the left side of the red section 
	# 5. Refine button in the right area should be displayed	
	# 6. Displayed with search results as: <recipe image> and <recipe name> <ratings(if any)>

@Priority2 @Recipe @TC06_RECI_HU
Scenario: Recipe_Hot_User verify user can navigate to Quick Recipe Finder
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	# Includes verification of Quick Recipe Finder page
	# 1. Screen should be displayed with Quick Finder and Advanced segment buttons below navigation bar
	# 2. Quick Finder should be selected as default (button should be displayed in red)
	# 3. Find button should appear in right-hand corner of navigation bar
	# 4. Find button should be displayed (displaying a toast in Android, as this is a default behaviour with android)	
	# 5. The search criteria should be displayed below navigation bar in three rows
	# a. Row 1 Label: "I want to make:"
	# b. Row 2 Label: "with:"
	# c. Row 3 Label: "in:"	

@Priority2 @Recipe @TC07_RECI_HU
Scenario: Recipe_Hot_User Quick Finder page validation in Find Recipes  
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	# Includes verify screen should be displayed with Quick Finder and Advanced segment buttons	
	And I verification of labels in Find Recipes page	
	# Includes verification of labels in the Find Recipes page
	# "I want to make:" label
	# 1. Verify that user is able to view all meal options by swiping left across screen
	# 2. User should able to see all meal options by swiping left until the end of options
	# 3. Verify that user is able to scroll back to the beginning of meal options by swiping right across screen
	# 4. User is able to return to first option by swiping right until the end of options
	# 5. Select a single option within meal options
	# 6. Selected option should be displayed in selected state (red)
	# 7. Verify if the user can select more than one search terms
	# 8. User should not be able to select more than one search terms
	And I verify the With: label
	# "With:" label
	# 1. Verify that user is able to view all meal options by swiping left across screen
	# 2. User should able to see all meal options by swiping left until the end of options
	# 3. Verify that user is able to scroll back to the beginning of meal options by swiping right across screen
	# 4. User is able to return to first option by swiping right until the end of options
	# 5. Select a single option within meal options
	# 6. Selected option should be displayed in selected state (red)
	# 7. Verify if the user can select more than one search terms
	# 8. User should not be able to select more than one search terms
	And I verify the In: label
	# "In:" label
	# 1. Verify that user is able to view all meal options by swiping left across screen
	# 2. User should able to see all meal options by swiping left until the end of options
	# 3. Verify that user is able to scroll back to the beginning of meal options by swiping right across screen
	# 4. User is able to return to first option by swiping right until the end of options
	# 5. Select a single option within meal options
	# 6. Selected option should be displayed in selected state (red)
	# 7. Verify if the user can select more than one search terms
	# 8. User should not be able to select more than one search terms
	When I click any label in any options
	And I click Find button
	Then I should see all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar

@Priority2 @Recipe @TC08_RECI_HU
Scenario: Recipe_Hot_User Page Validation on clicking Refine button in Quick Finder  
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	When I select a single option within meal options below I want to make: label
	Then I should selected option is displayed in red
	When I click Find button
	Then I should see all the properties in Recipes List page 	
	When I select Refine button
	Then I should see Refine page
	# Includes verification of refine page information
	# 1. Navigation bar should be titled as "Refine"
	# 2. Hamburger icon should appear at left hand of navigation bar
	# 3. Below navigation bar search refining sections and respective criteria attributes should be present
	# 4. Search/Refining criteria sections should diplay in static, expanded format	
	# 5. Each search criteria section should display in a list format, seperated by section title, 
	#    search attributes displaying in ascending alphabetical or numberical order
	# 6. Each selection option should have a Check Box, left of text
	# 7. checkmark icon should appear at the right hand of navigation bar

@Priority2 @Recipe @TC09_RECI_HU
Scenario: Recipe_Hot_User verify the naviagtion follow from meal options till refine page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	When I select a single option within meal options below I want to make: label
	Then I should selected option is displayed in red
	When I click Find button
	Then I should see all the properties in Recipes List page 	
	When I select Refine button
	Then I should see Refine page
	# Includes verify the title in navigation bar - Refine
	When I select in-active check boxes
	Then I see a blue check mark is invoked
	When I select active check box
	Then I see checkmark removed
	When I select device back button
	Then I see previous screen with list of recipes
	When I select Refine button
	Then I see Refine page
	# Includes verify the title in navigation bar should be Refine
	When I select device back button
	Then I see previous screen with list of recipes
	When I select device back button
	Then I see Previously viewed page

@Priority2 @Recipe @TC10_RECI_HU
Scenario: Recipe_Hot_User Advanced segment page validation in Find Recipes 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page	
	When I click Advanced button
	Then I should see Find Recipes Advanced List Page
	# Includes verification of Advanced Find Recipes page
	# 1. Segment button should be displayed in selected state(button should be displayed in red)
	# 2. Hamburger icon should appear in left-hand corner of navigation bar
	# 3. Find button should appear in right-hand corner of navigation bar
	# 4. Find button should be displayed (displaying a toast in Android, as this is a default behaviour with android)
	# 5. Search criteria should have : <category header> and <search term> (row for each term within category)
	
@Priority2 @Recipe @TC11_RECI_HU
Scenario: Recipe_Hot_User A single filter validation in Advanced segment
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page	
	When I click Advanced button
	Then I should see Find Recipes Advanced List Page
	# Includes verification of Advanced button should be displayed in selected state in red
	When I select at least one filter option
	Then I see selected filters displayed as checked
	# Includes verification of filter validation
	# 1. User should only be allowed to select a single filter within BY MEAL TYPE 
	# 2. In BY MAIN INGREDIENT and other sections multiple selection is allowed
	When I select Find button
	Then I see search results page
	# Includes verification of title Recipe in the navigation bar

@Priority1 @Recipe @TC12_RECI_HU
Scenario: Recipe_Hot_User verify user can Scan Product in recipe search
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I click on the Scan Product button 
	Then I should see scan product screen
	When I click device back button
	Then I Should see previousy viewed recipe page

@Priority1 @Recipe @TC13_RECI_HU
Scenario: Recipe_Hot_User verify user can find the ingredients in the recipe details page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes	
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed	
	# Include verify image should be displayed below navigation bar
	And I verify label inforamtion in ingredients details
	# Include verification of ingredients details
	# 1. Label text "Ingredients" should be displayed below segmented tabs
	# 2. Recipe ingredients should be displayed preceeded with an empty checkbox field
	# 3. Blue check mark should appears upon selection.
	# 4. Select all button should be displayed below ingredients
	# 5. Add to List button should be displayed to the right	of Select all button
	# 6. Below Select All button, label Reviews should be displayed
	# 7. Reviews followed by the number of reviews(if any) should be displayed for selected recipe
	# 8. Each review should be displayed with <review title>,<rating>,<reviewer name>
	# <Reviewed on Date>,<review body text> and "Read more" enabled text
	
@Priority3 @Recipe @TC14_RECI_HU
Scenario: Recipe_Hot_User verify user can navigate to the instructions tab in the recipe details page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page  
	# Include verification of Title - Recipes
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed	
	# Include verify image should be displayed below navigation bar
	When I click on Instructions button
	Then I should see Instructions details
	# Include verification of instructions details
	# 1. Instructions tab should be selected as (red background)
	# 2. Below segmented tabs, label text "Instructions" should be displayed
	# 3. Below instructions, the Reviews followed by (#) should be displayed
	# 4. Where # is the number of reviews of displayed recipe.(if no reviews, do not display)
	# 5. Each review should be displayed with <review title>,<rating>,<reviewer name>
	#    <Reviewed on Date>,<review body text> and "Read more" enabled text
	
@Priority3 @Recipe @TC15_RECI_HU
Scenario: Recipe_Hot_User verify user can navigate to the nutrition view tab in the recipe details page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipes
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar	
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click Nutrition Info button
	Then I should see nutritions informations
	# Include verification of nutrition tab
	# 1. Nutrition Info tab should be selected with (red background)
	# 2. Segmented tab should be displayed with label as Nutrition info
	# 3. Below nutrition info Reviews label followed by the number of reviews (if any) should be  displayed
	# 4. Each review should be displayed with <review title>,<rating>,<reviewer name>
	#    <Reviewed on Date>,<review body text> and "Read more" enabled text

@Priority1 @Recipe @TC16_RECI_HU
Scenario: Recipe_Hot_User verify user can see No results error in advanced search
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I click Quick Recipe Finder button 
	Then I should see Screen is displayed with Quick Finder and Advanced segment buttons
	# Includes verification of labels in the Find Recipes page
	When I click Find button
	Then I should see pop up message
	# Include the pop up message should contain
	# 1. If no results are available, Search Results page should display pop up with message 
	# :"No results matched search terms. Please try again."
	
@Priority2 @Recipe @TC17_RECI_HU
Scenario: Recipe_Hot_User verify user can add recipe to the recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	And I verify Add to Recipe Box Button
	# Include verify the "Add to Recipe Box" Button below the image
	# 1. "Add to Recipe Box" button should be displayed
	When I select Add to Recipe Box
	Then I should see scrolling selector appears with available folders
	When I select any folder and select Add
	Then specific Recipe gets added to Recipe box
	# Include verifying information in the Recipes page
	# 1. Recipe gets added to Recipe box
	# 2. The text should change to "Added to Recipe box" 
	# 3. App should display toast "Added to <folder name>"
	When I click Added To Recipe Box
	Then I should see the Recipe box with all the available folders
	
@Priority2 @Recipe @TC18_RECI_HU
Scenario: Recipe_Hot_User verify user can select the nutirional tab in the recipe detail page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click Nutrition Info segment button
	Then I see Nutritional icons in red
	When I click healthy icons located
	Then I should see the H-E-B Nutritional Tags with detailing each healthy icon
	When I click device back button
	Then I should see previously viewed Recipe Detail page

@Priority2 @Recipe @TC19_RECI_HU
Scenario: Recipe_Hot_User verify user can add one ingredient into shopping list
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I select a single ingredient by clicking within corresponding check field
	Then I should see the selected ingredient
	# Include steps for validating the checkbox
	# 1. A blue check mark appears in check field of item
	# 2. The Add to List button should get enabled
	When I select Add to List button
	Then I should see scrolling selector appears with users available shopping lists
	When I select shopping list fron scrolling selector
	And I click Add button
	Then I should see Toast message appears
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@Priority1 @Recipe @TC20_RECI_HU
Scenario: Recipe_Hot_User verify user can add some ingredients into shopping list
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I select a multiple ingredient by clicking within corresponding check field.
	Then I should see the selected ingredient
	# Include steps for validating the checkbox
	# 1. A blue check mark appears in check field of item
	# 2. The Add to List button should get enabled
	When I select Add to List button
	Then I should see scrolling selector appears with users available shopping lists
	When I select shopping list fron scrolling selector and click Add button
	Then I should see Toast message appears
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@Priority1 @Recipe @TC21_RECI_HU
Scenario: Recipe_Hot_User verify user can unselect or add all ingredients to shopping list
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click Select All button in ingredient section
	Then I should see all ingredients are displayed as selected
	# Include steps for verifying information
	# 1. A blue check mark appears in check field of each item
	# 2. Select All button should now displayed as Unselect All
	When I click Unselect button
	Then I should see all ingredients are displayed as unselected
	# Include steps for verifying information
	# 1. An empty check fields should be dispalyed
	# 2. Unselect All button is now displayed as Select All
	When I click Select All button in ingredient section
	Then I should see all selected ingredient
	# Include steps for validating the checkbox
	# 1. A blue check mark appears in check field of item
	# 2. The Add to List button should get enabled
	# 3. Select All button should now displayed as Unselect All
	When I click Add to List button
	Then I should see scrolling selector appears with users available shopping lists
	When I select shopping list from scrolling selector and click Add button
	Then I should see Toast message appears
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header
	
@Priority1 @Recipe @TC22_RECI_HU
Scenario: Recipe_Hot_User Validation of options in share button through internet in recipe 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click share icon
	Then I should see share options
	# Include verifying thr share options information
	# 1. The share options should be displayed in a scrolling selector with Facebook, Google+ and Email

@Priority1 @Recipe @TC23_RECI_HU
Scenario: Recipe_Hot_User verify user can delete recipe from recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	# Include verification of recipe box information	
	When I click folder row
	Then I should see the Folder page
	# Include verification of header in the folder	
	When I select Delete Recipe button
	Then I should see Pop up dialog
	# Include verify the information in pop-up
	# 1. Pop up dialog appers with cancel or delete button
	When I select delete
	Then I should see deleted
	# Include information while deleting
	# 1. Message should be appears as Deleted <The name of the recipe>
	When I select device back button
	Then I should view My Recipe Box

@Priority2 @Recipe @TC24_RECI_HU
Scenario: Recipe_Hot_User verify user can move recipe from one folder to another
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	# Include verification of recipe box information and folder stuctures
	When I click folder row
	Then I should see the Folder page
	# Include verifying the header and recipe information in the folder
	When I select Move Recipe
	Then I should see Scrolling selector
	# Include verifying the user's recipe box.
	# 1. Scrolling selector appears displaying folder names within user's recipe box
	When I select folder name and click Move
	Then I should see Folder page
	# Include validation of Folder page
	# 1. Select folder name from scrolling selector
	# 2. Select "Move" button in right-hand corner of selector
	# 3. Folder page should displayed with moved recipe no longer being displayed within viewed folder
	When I select back button
	Then I should view Recipe Box page
	# Include Verify My Recipe Box page
	# 1. Verify if recipe count increased by one for the folder where user moved the recipe
	# 2. Recipe count should be increased by 1
	# 3. Verify if recipe count is decreased by one for the folder from where user moved
	# 4. Recipe count should be decreased by 1

@Priority2 @Recipe @TC25_RECI_HU
Scenario: Recipe_Hot_User verify move reciepe folder from the recipe box to shopping list 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page
	# Include verifying the header and recipe information in the folder
	When I select  Add to List
	Then I should see Scrolling selector
	# Include verifying the user's recipe box.
	# 1. Scrolling selector appears with user's available shopping lists
	When I select shopping list from scrolling selector and click Add
	Then I should see Toast message
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal(s) added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@Priority2 @Recipe @TC26_RECI_HU
Scenario: Recipe_Hot_User verify user can a add folder to the recipe box 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page
	When I click + icon
	Then I should see Create Folder popup
	When I Enter folder name of already existing folder and click Add
	Then I should see the error message
	# Include the information if erroe message
	# 1. Error message should display informing user folder already exists
	# 2. Error Label should display as "Can't add folder ALL. There is  already a folder with that name
	When I click cancel
	Then I should see Previously viewed My Recipe Box page
	When I click + icon
	Then I should see Create Folder popup with "Cancel" and "Add" button
	When I enter valid, unique folder name and click "Add"
	Then I should see My Recipe Box screen
	# Include valid the My Recipe Box screen
	# 1. My Recipe Box screen should displayed with newly created folder

@Priority2 @Recipe @TC27_RECI_HU
Scenario: Recipe_Hot_User verify user can rename a folder in the recipe box 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page
	When I select edit icon
	Then I should see Tab Row to Edit label
	When I select folder to be renamed
	Then I should see Rename Folder popup
	When I enter the valid unique folder name and select rename button
	Then I should see the My Recipe Box screen
	# Include verifying the My Recipe Box screen
	# 1. My Recipe Box screen is displayed with folder name correctly updated to user entry

@Priority2 @Recipe @TC28_RECI_HU
Scenario: Recipe_Hot_User verify user can select the back button from the recipe box  
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page 
  # Include verifying the header and recipe information in the folder
	# 1. Folder page is displayed correctly with "<Folder Name>" displayed in navigation bar
	# 2. Recipes within folder displayed (If items exist)
	# 3. Hamburger icon in left-hand corner
	# 4. <Folder Name> displayed in navigation bar next to hamburger icon
	# 5. Recipe Box icon should appear in right-hand corner of navigation bar
	# 6. Below navigation bar, display recipes within folder as
	# a. <recipe image>
	# b. <recipe name> and <ratings>
	# c. Add to List button, Move Recipe button and Delete Recipe button
	When I select device back button
	Then I should see previously viewed My Recipe Box page
	
@Priority2 @Recipe @TC29_RECI_HU
Scenario: Recipe_Hot_User verify user can delete folder from recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I wwipe right across folder name
	Then I should see Toast message
	# Include Toast message will appear with a message
	# 1. "<folder name> deleted" and with a button to Undo
	# 2. Wait Toast message to disappear
	# 3. Selected folder is deleted from "My Recipe Box"
	# 4. Note: "All" folder should not be able to be deleted

	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe	
	# 1. Navigation bar should be titled as "Recipes"
	# 2. Hamburger icon should appear in the left-hand corner of action bar
	# 3. Recipe box icon should appear in the right-hand corner of action bar
	# 4. Search bar should be displayed below action bar
	# 5. Search bar should be displayed with default text as "Search or Scan Products" 
	# 6. Content image should be displayed below search bar
	# 7. "Quick Recipe Finder" button should be displayed at the bottom of the page.

@ReviewedOK
@Priority2 @Recipe @TC02_RECI_HU
Scenario: Recipe_Hot_User Verify user can search a valid recipe in recipe search bar
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of recipes list page
	# 1. Recipes as the Navigation bar title
	# 2. Hamburger icon in the left hand corner of navigation bar
	# 3. Recipe box in the right hand corner of navigation bar		
	# 4. Below navigation bar display red area, with "<#> recipes for <searched term>"  
	#    displayed correctly in the left side of the red section 
	# 5. Refine button in the right area should be displayed	
	# 6. Displayed with search results as: <recipe image> and <recipe name> <ratings(if any)>


@ReviewedOK
@Priority2 @Recipe @TC03_RECI_HU
Scenario: Recipe_Hot_User Verify user can search a valid recipe in recipe search bar
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page	
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed
	# Include verification of recipe details
	# 1. Recipe name should be displayed below navigation bar and with ratings(if any) in the right
	# 2. Ingredients tab should be selected by default
	# 3. Hamburger icon should appear in the left hand corner of navigation bar
	# 4. Recipe Box icon should appear in the right hand corner of navigation bar	
	# 5. Share icon should appear to the right of Recipe Box
	# 6. User should able to scroll left to view other content images
	# 7. User should able to scroll right to return to the landing image
	# 8. Recipe image is displayed below Recipe name
	# 9. Page indicator should be displayed at bottom of image,in case of multiple images
	# 10. Log in Button should be displayed below image
	# 11. Below three sections should be displayed filled with grey color in the following order
	# a. In left of grey field, label "Prep Time" and <prep time> should be displayed
	# b. In middle of grey field, label "Cook Time" and <cook time> should be displayed 
	# c. In right of grey field, label "Serves" and <serves #> should be displayed
	# 12. Ingredients, Instructions and Nutrition Info lables should be displayed below grey field

@ReviewedOK
@Priority1 @Recipe @TC04_RECI_HU
Scenario: Recipe_Hot_User verify error message for invalid search in recipe search bar
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type invalid input search term within search field 
	And I click Search button
	Then I should see error pop-up
	# Include the error message in pop-up
	# 1. The pop up should get displayed as "No results found for (invalid search term)"

@ReviewedOK
@Priority1 @Recipe @TC05_RECI_HU
Scenario: Recipe_Hot_User verify user can select background image on recipe landing screen
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	And I verify Content image
	# Includes verifying Content image
	# 1. Content image should be displayed as configured (in BCC) on Recipes Landing page
	When I select background image on Landing page
	Then I should see the results page
	# Includes verification of title Recipe in the navigation bar

@ReviewedOK	
@Priority2 @Recipe @TC06_RECI_HU
Scenario: Recipe_Hot_User can navigate to Quick Recipe Finder
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	# Includes verification of Quick Recipe Finder page
	# 1. Screen should be displayed with Quick Finder and Advanced segment buttons below navigation bar
	# 2. Quick Finder should be selected as default (button should be displayed in red)
	# 3. Find button should appear in right-hand corner of navigation bar
	# 4. Find button should be displayed (displaying a toast in Android, as this is a default behaviour with android)	
	# 5. The search criteria should be displayed below navigation bar in three rows
	# a. Row 1 Label: "I want to make:"
	# b. Row 2 Label: "with:"
	# c. Row 3 Label: "in:"	

@Need to be changed	
@Priority2 @Recipe @TC07_RECI_HU
Scenario: Recipe_Hot_User can navigate to Quick Recipe Finder
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	# Includes verify screen should be displayed with Quick Finder and Advanced segment buttons	
	And I verification of labels in Find Recipes page	
	# Includes verification of labels in the Find Recipes page
	# "I want to make:" label
	# 1. Verify that user is able to view all meal options by swiping left across screen
	# 2. User should able to see all meal options by swiping left until the end of options
	# 3. Verify that user is able to scroll back to the beginning of meal options by swiping right across screen
	# 4. User is able to return to first option by swiping right until the end of options
	# 5. Select a single option within meal options
	# 6. Selected option should be displayed in selected state (red)
	# 7. Verify if the user can select more than one search terms
	# 8. User should not be able to select more than one search terms
	And I verify the With: label
	# "With:" label
	# 1. Verify that user is able to view all meal options by swiping left across screen
	# 2. User should able to see all meal options by swiping left until the end of options
	# 3. Verify that user is able to scroll back to the beginning of meal options by swiping right across screen
	# 4. User is able to return to first option by swiping right until the end of options
	# 5. Select a single option within meal options
	# 6. Selected option should be displayed in selected state (red)
	# 7. Verify if the user can select more than one search terms
	# 8. User should not be able to select more than one search terms
	And I verify the In: label
	# "In:" label
	# 1. Verify that user is able to view all meal options by swiping left across screen
	# 2. User should able to see all meal options by swiping left until the end of options
	# 3. Verify that user is able to scroll back to the beginning of meal options by swiping right across screen
	# 4. User is able to return to first option by swiping right until the end of options
	# 5. Select a single option within meal options
	# 6. Selected option should be displayed in selected state (red)
	# 7. Verify if the user can select more than one search terms
	# 8. User should not be able to select more than one search terms
	When I click any label in any options
	And I click Find button
	Then I should see all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	
### COMMENT : Same Scenario name as in 7 & 6 

@ReviewedOK
@Priority2 @Recipe @TC08_RECI_HU
Scenario: Recipe_Hot_User can navigate to Quick Recipe Finder and check for Refine button
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	When I select a single option within meal options below I want to make: label
	Then I should selected option is displayed in red
	When I click Find button
	Then I should see all the properties in Recipes List page 	
	When I select Refine button
	Then I should see Refine page
	# Includes verification of refine page information
	# 1. Navigation bar should be titled as "Refine"
	# 2. Hamburger icon should appear at left hand of navigation bar
	# 3. Below navigation bar search refining sections and respective criteria attributes should be present
	# 4. Search/Refining criteria sections should diplay in static, expanded format	
	# 5. Each search criteria section should display in a list format, seperated by section title, 
	#    search attributes displaying in ascending alphabetical or numberical order
	# 6. Each selection option should have a Check Box, left of text
	# 7. checkmark icon should appear at the right hand of navigation bar

@Need to be changed
@Priority2 @Recipe @TC09_RECI_HU
Scenario: Recipe_Hot_User can navigate to Quick Recipe Finder and check for Refine button
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	When I select a single option within meal options below I want to make: label
	Then I should selected option is displayed in red
	When I click Find button
	Then I should see all the properties in Recipes List page 	
	When I select Refine button
	Then I should see Refine page
	# Includes verify the title in navigation bar should be Refine
	When I select in-active check boxes
	Then I see a blue check mark is invoked
	When I select active check box
	Then I see checkmark removed
	When I select device back button
	Then I see previous screen with list of recipes
	When I select Refine button
	Then I see Refine page
	# Includes verify the title in navigation bar should be Refine
	When I select device back button
	Then I see previous screen with list of recipes
	When I select device back button
	Then I see Previously viewed page
## comment : Same scenario name as the previous one 

@ReviewedOK	
@Priority2 @Recipe @TC10_RECI_HU
Scenario: Recipe_Hot_User can navigate to Advanced Search
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page	
	When I click Advanced button
	Then I should see Find Recipes Advanced List Page
	# Includes verification of Advanced Find Recipes page
	# 1. Segment button should be displayed in selected state(button should be displayed in red)
	# 2. Hamburger icon should appear in left-hand corner of navigation bar
	# 3. Find button should appear in right-hand corner of navigation bar
	# 4. Find button should be displayed (displaying a toast in Android, as this is a default behaviour with android)
	# 5. Search criteria should have : <category header> and <search term> (row for each term within category)
	
@Need to be changed	
@Priority2 @Recipe @TC11_RECI_HU
Scenario: Recipe_Hot_User can navigate to Advanced Search
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page	
	When I click Advanced button
	Then I should see Find Recipes Advanced List Page
	# Includes verification of Advanced button should be displayed in selected state in red
	When I select at least one filter option
	Then I see selected filters displayed as checked
	# Includes verification of filter validation
	# 1. User should only be allowed to select a single filter within BY MEAL TYPE 
	# 2. In BY MAIN INGREDIENT and other sections multiple selection is allowed
	When I select Find button
	Then I see search results page
	# Includes verification of title Recipe in the navigation bar
###COMMENT: Same scenario name as the previous 

@Need to be changed	
@Priority1 @Recipe @TC12_RECI_HU
Scenario: Recipe_Hot_User can Scan Product in recipe search
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click on the Scan Product button 
	Then I should see scan product screen
	# Includes verify title of top navigation bar as Recipe
	And I verify error message for invalid bar code
	# Includes verification of error message "No results found for scanned item. Please try another search."
	When I select OK button
	Then I should see scan product screen
### COMMENT :
#1) Practically this scenario cant be completely automated , but we can check for scan button , click it and return back to the previous page 
# Please update the above cases accordingly	

@ReviewedOK
@Priority1 @Recipe @TC13_RECI_HU
Scenario: Recipe_Hot_User can find the ingredients in the recipe detail page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe	
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed	
	# Include verify image should be displayed below navigation bar
	And I verify label inforamtion in ingredients details
	# Include verification of ingredients details
	# 1. Label text "Ingredients" should be displayed below segmented tabs
	# 2. Recipe ingredients should be displayed preceeded with an empty checkbox field
	# 3. Blue check mark should appears upon selection.
	# 4. Select all button should be displayed below ingredients
	# 5. Add to List button should be displayed to the right	of Select all button
	# 6. Below Select All button, label Reviews should be displayed
	# 7. Reviews followed by the number of reviews(if any) should be displayed for selected recipe
	# 8. Each review should be displayed with <review title>,<rating>,<reviewer name>
	# <Reviewed on Date>,<review body text> and "Read more" enabled text

@Need to be changed/@Need to remove	
@Priority1 @Recipe @TC14_RECI_HU
Scenario: Recipe_Hot_User can find the ingredients in the recipe detail page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe	
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed	
	# Include verify image should be displayed below navigation bar
	And I verify label inforamtion in ingredients details
	# Include verification of ingredients tab as default
	When I click on review button
	Then I should see the reviews
	# Include verificaion of review information
	# 1. Reviews followed by the number of reviews should be displayed for selected recipe	
	# 2. Each review should be displayed with <review title>,<rating>,<reviewer name>
	# <Reviewed on Date>,<review body text> and "Read more" enabled text
	When I select device back button
	Then I should see previously viewed Search Results page

### COMMENT : 
1) No need of seperate scenario for Review as still now we cant add reviews in mobile App , the data need to flow from desktop browser .
2) So we can validate the presence of review along with the above page element validation part of the previous scenario itself 
	
@ReviewedOK	
@Priority3 @Recipe @TC15_RECI_HU
Scenario: Recipe_Hot_User can navigate to the instructions tab in the recipe detail page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page  
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed	
	# Include verify image should be displayed below navigation bar
	When I click on Instructions button
	Then I should see Instructions details
	# Include verification of instructions details
	# 1. Instructions tab should be selected as (red background)
	# 2. Below segmented tabs, label text "Instructions" should be displayed
	# 3. Below instructions, the Reviews followed by (#) should be displayed
	# 4. Where # is the number of reviews of displayed recipe.(if no reviews, do not display)
	# 5. Each review should be displayed with <review title>,<rating>,<reviewer name>
	#    <Reviewed on Date>,<review body text> and "Read more" enabled text
	
@ReviewedOK	
@Priority3 @Recipe @TC16_RECI_HU
Scenario: Recipe_Hot_User can navigate to the nutrition info view tab
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar	
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click Nutrition Info button
	Then I should see nutritions informations
	# Include verification of nutrition tab
	# 1. Nutrition Info tab should be selected with (red background)
	# 2. Segmented tab should be displayed with label as Nutrition info
	# 3. Below nutrition info Reviews label followed by the number of reviews (if any) should be  displayed
	# 4. Each review should be displayed with <review title>,<rating>,<reviewer name>
	#    <Reviewed on Date>,<review body text> and "Read more" enabled text

@ReviewedOK
@Priority1 @Recipe @TC17_RECI_HU
Scenario: Recipe_Hot_User No results error in advanced search
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I click Recipes from aisle
	Then I should see Recipes page
	When I click Quick Recipe Finder button 
	Then I should see Screen is displayed with Quick Finder and Advanced segment buttons
	# Includes verification of labels in the Find Recipes page
	When I click Find button
	Then I should see pop up message
	# Include the pop up message should contain
	# 1. If no results are available, Search Results page should display pop up with message 
	# :"No results matched search terms. Please try again."
	
@ReviewedOK
@Priority2 @Recipe @TC18_RECI_HU
Scenario: Recipe_Hot_User can add recipe to the recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	And I verify Add to Recipe Box Button
	# Include verify the "Add to Recipe Box" Button below the image
	# 1. "Add to Recipe Box" button should be displayed
	When I select Add to Recipe Box
	Then I should see scrolling selector appears with available folders
	When I select any folder and select Add
	Then specific Recipe gets added to Recipe box
	# Include verifying information in the Recipes page
	# 1. Recipe gets added to Recipe box
	# 2. The text should change to "Added to Recipe box" 
	# 3. App should display toast "Added to <folder name>"
	When I click Added To Recipe Box
	Then I should see the Recipe box with all the available folders
	
@ReviewedOK
@Priority2 @Recipe @TC19_RECI_HU
Scenario: Recipe_Hot_User can select the nutirional tab in the recipe detail page
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click Nutrition Info segment button
	Then I see Nutritional icons in red
	When I click healthy icons located
	Then I should see the H-E-B Nutritional Tags with detailing each healthy icon
	When I click device back button
	Then I should see previously viewed Recipe Detail page

@ReviewedOK		
@Priority2 @Recipe @TC20_RECI_HU
Scenario: Recipe_Hot_User add one ingredient to shopping list
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I select a single ingredient by clicking within corresponding check field
	Then I should see the selected ingredient
	# Include steps for validating the checkbox
	# 1. A blue check mark appears in check field of item
	# 2. The Add to List button should get enabled
	When I select Add to List button
	Then I should see scrolling selector appears with users available shopping lists
	When I select shopping list fron scrolling selector
	And I click Add button
	Then I should see Toast message appears
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@ReviewedOK	
@Priority1 @Recipe @TC21_RECI_HU
Scenario: Recipe_Hot_User add some ingredients to shopping list
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I select a multiple ingredient by clicking within corresponding check field.
	Then I should see the selected ingredient
	# Include steps for validating the checkbox
	# 1. A blue check mark appears in check field of item
	# 2. The Add to List button should get enabled
	When I select Add to List button
	Then I should see scrolling selector appears with users available shopping lists
	When I select shopping list fron scrolling selector and click Add button
	Then I should see Toast message appears
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@ReviewedOK
@Priority1 @Recipe @TC22_RECI_HU
Scenario: Recipe_Hot_User unselect OR add all ingredients to shopping list
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click Select All button in ingredient section
	Then I should see all ingredients are displayed as selected
	# Include steps for verifying information
	# 1. A blue check mark appears in check field of each item
	# 2. Select All button should now displayed as Unselect All
	When I click Unselect button
	Then I should see all ingredients are displayed as unselected
	# Include steps for verifying information
	# 1. An empty check fields should be dispalyed
	# 2. Unselect All button is now displayed as Select All
	When I click Select All button in ingredient section
	Then I should see all selected ingredient
	# Include steps for validating the checkbox
	# 1. A blue check mark appears in check field of item
	# 2. The Add to List button should get enabled
	# 3. Select All button should now displayed as Unselect All
	When I click Add to List button
	Then I should see scrolling selector appears with users available shopping lists
	When I select shopping list from scrolling selector and click Add button
	Then I should see Toast message appears
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@ReviewedOK	
@Priority1 @Recipe @TC23_RECI_HU
Scenario: Recipe_Hot_User can share recipe through internet
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verify image should be displayed below navigation bar
	When I click share icon
	Then I should see share options
	# Include verifying thr share options information
	# 1. The share options should be displayed in a scrolling selector with Facebook, Google+ and Email

@ReviewedOK
@Priority1 @Recipe @TC24_RECI_HU
Scenario: Recipe_Hot_User delete recipe from recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	# Include verification of recipe box information	
	When I click folder row
	Then I should see the Folder page
	# Include verification of header in the folder	
	When I select Delete Recipe button
	Then I should see Pop up dialog
	# Include verify the information in pop-up
	# 1. Pop up dialog appers with cancel or delete button
	When I select delete
	Then I should see deleted
	# Include information while deleting
	# 1. Message should be appears as Deleted <The name of the recipe>
	When I select device back button
	Then I should view My Recipe Box

@ReviewedOK	
@Priority2 @Recipe @TC25_RECI_HU
Scenario: Recipe_Hot_User move recipe from one folder to another
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	# Include verification of recipe box information and folder stuctures
	When I click folder row
	Then I should see the Folder page
	# Include verifying the header and recipe information in the folder
	When I select Move Recipe
	Then I should see Scrolling selector
	# Include verifying the user's recipe box.
	# 1. Scrolling selector appears displaying folder names within user's recipe box
	When I select folder name and click Move
	Then I should see Folder page
	# Include validation of Folder page
	# 1. Select folder name from scrolling selector
	# 2. Select "Move" button in right-hand corner of selector
	# 3. Folder page should displayed with moved recipe no longer being displayed within viewed folder
	When I select back button
	Then I should view Recipe Box page
	# Include Verify My Recipe Box page
	# 1. Verify if recipe count increased by one for the folder where user moved the recipe
	# 2. Recipe count should be increased by 1
	# 3. Verify if recipe count is decreased by one for the folder from where user moved
	# 4. Recipe count should be decreased by 1

@ReviewedOK
@Priority2 @Recipe @TC26_RECI_HU
Scenario: Recipe_Hot_User from recipe folder move recipe to shopping list 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page
	# Include verifying the header and recipe information in the folder
	When I select  Add to List
	Then I should see Scrolling selector
	# Include verifying the user's recipe box.
	# 1. Scrolling selector appears with user's available shopping lists
	When I select shopping list from scrolling selector and click Add
	Then I should see Toast message
	# Include verifying the toast message information
	# 1. Toast message should appear informing user ingredient was added to selected shopping list
	# 2. Toast message should be "You added <count of ingredient selected> product(s) to <list name> shopping list"
	When I navigate to left-hand
	Then I should see shopping list from aisle
	When I click shopping list
	Then I should verify deal(s) added
	# Include verifying the deal(s) informaion
	# 1. Verify deal(s) added are displayed correctly
	# 2. Verify total quantities have been modified correctly in the header

@ReviewedOK
@Priority2 @Recipe @TC27_RECI_HU
Scenario: Recipe_Hot_User add folder to recipe box 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page
	When I click + icon
	Then I should see Create Folder popup
	When I Enter folder name of already existing folder and click Add
	Then I should see the error message
	# Include the information if erroe message
	# 1. Error message should display informing user folder already exists
	# 2. Error Label should display as "Can't add folder ALL. There is  already a folder with that name
	When I click cancel
	Then I should see Previously viewed My Recipe Box page
	When I click + icon
	Then I should see Create Folder popup with "Cancel" and "Add" button
	When I enter valid, unique folder name and click "Add"
	Then I should see My Recipe Box screen
	# Include valid the My Recipe Box screen
	# 1. My Recipe Box screen should displayed with newly created folder

@ReviewedOK
@Priority2 @Recipe @TC28_RECI_HU
Scenario: Recipe_Hot_User rename folder in recipe box 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page
	When I select edit icon
	Then I should see Tab Row to Edit label
	When I select folder to be renamed
	Then I should see Rename Folder popup
	When I enter the valid unique folder name and select rename button
	Then I should see the My Recipe Box screen
	# Include verifying the My Recipe Box screen
	# 1. My Recipe Box screen is displayed with folder name correctly updated to user entry

@ReviewedOK
@Priority2 @Recipe @TC29_RECI_HU
Scenario: Recipe_Hot_User Select back button from recipe box 
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page 
  # Include verifying the header and recipe information in the folder
	# 1. Folder page is displayed correctly with "<Folder Name>" displayed in navigation bar
	# 2. Recipes within folder displayed (If items exist)
	# 3. Hamburger icon in left-hand corner
	# 4. <Folder Name> displayed in navigation bar next to hamburger icon
	# 5. Recipe Box icon should appear in right-hand corner of navigation bar
	# 6. Below navigation bar, display recipes within folder as
	# a. <recipe image>
	# b. <recipe name> and <ratings>
	# c. Add to List button, Move Recipe button and Delete Recipe button
	When I select device back button
	Then I should see previously viewed My Recipe Box page

@Need to remove	
@Priority2 @Recipe @TC30_RECI_HU
Scenario: Recipe_Hot_User view recipe detail page from recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I click folder row
	Then I should see the Folder page 
  # Include verify Recipes within folder displayed
	When I select recipe image within the recipe row
	Then I should see recipe details page is displayed
	# Include verify image in the recipe page
	When I select "Read More" link
	Then I should see the entire review statement is displayed
	
@ReviewedOK	
@Priority2 @Recipe @TC31_RECI_HU
Scenario: Recipe_Hot_User delete folder from recipe box
	Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I wwipe right across folder name
	Then I should see Toast message
	# Include Toast message will appear with a message
	# 1. "<folder name> deleted" and with a button to Undo
	# 2. Wait Toast message to disappear
	# 3. Selected folder is deleted from "My Recipe Box"
	# 4. Note: "All" folder should not be able to be deleted

@Need to remove	
@Priority3 @Recipe @TC32_RECI_HU
Scenario: Recipe_Hot_User select back button from recipe box
Given I am a hot user
	# Includes steps Open App,
	# 1. open application
	# 2. Register a new user
	When I select recipe box icon
	Then I should My Recipe Box screen
	When I select device back button
	Then I should see the Previously viewed screen

