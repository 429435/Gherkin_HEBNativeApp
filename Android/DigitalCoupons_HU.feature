  26/07/2016:Digital Coupons_Hot user
  
  Feature: Digital Coupons feature
       @Priority3 @DigitalCoupons @TC01_DC_HU
       Scenario: DC_Hot_Page_Validation_Coupons page
       Given I am a hot user but not signed for Digital Coupons
       # Includes steps 
       # 1. open application and 
       # 2. Register a new user
       When I select Coupons from aisle
       Then I should see Coupons sign up page
       # 1.Includes steps for verifying Title, Digital Coupons video image, Display copy text, 
       # 2.followed by the following instructions: 1. Sign up  2. Select coupons  3. Redeem in store   
       # 3.Sign Up Now buttons
       # 4.“View available coupons” link below.
       
       @Priority3 @DigitalCoupons @TC02_DC_HU
       Scenario: DC_Hot_Page_Validation_ALL COUPONS page
       Given I am a hot user but not signed for Digital Coupons
       When I select Coupons from aisle
       Then I should see Coupons sign up page
       When I click on View avaible coupons
       Then user is navigated to coupons landing page
       # 1.Include verification of title -"ALL COUPONS"
       # 2.Includes steps for verifying Filter icon and "All Coupons" Spinner. 
       # 3.Spinner from action bar (indicated by grey triangle to the right of category name)that should display list of applicable coupons categories
       # 4.Includes verification of filter tab which displays Default,Newest,Highest Value,Expiration Date,Popularity
       # 5."TOTAL AVAILABLE", "SELECTED SAVINGS" and "SAVINGS-TO-DATE" tabs should be visible. 
       # 6.Below header display search bar with Sign Up Now buttons
       # 7.Includes verification of all relevant coupons displayed below.
       # 8.Includes Verification of "TOTAL AVAILABLE" tab selected by default

    @Priority3 @DigitalCoupons @TC03_DC_HU
    Scenario: DC_Hot_Verify Dialog Pop Up When Selecting Tabs
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click first coupon row
    Then I verify Coupons Details page
    # Include verification of title - Coupons Details
    When I select device back button
    Then I see Coupons landing page
    # Include verification of title - ALL COUPONS
    When I select Selected Savings tab
    Then I should see pop up Sign Up or Log in
    # Includes verification of
    # 1. Header: "Sign Up or Log in"
    # 2. Dialogue box reads "Please sign up or log in to access this feature."
    # 3. An "Ok" button.
    When I select Savings-To-Date tab
    Then I should see pop up Sign Up or Log in
  	# Includes verification of
  	# 1. Header: "Sign Up or Log in"
  	# 2. Dialogue box reads "Please sign up or log in to access this feature."
  	# 3. An "Ok" button.
  
    @Priority2 @DigitalCoupons @TC04_DC_HU
    Scenario: DC_Hot_Not Enrolled_All Coupons Apply Filters
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I select Filter icon
    Then I see Scrolling selector list appears with "Default" selected options
    When I select "Newest" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Newest"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Newest" selected options
    When I select "Highest Value" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Highest Value"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Highest Value" selected options
    When I select "Expiration Date" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Expiration Date"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Expiration Date" selected options
    When I select "Popularity" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Popularity"

    @Priority2 @DigitalCoupons @TC05_DC_HU
    Scenario: DC_Hot_Not Enrolled_All Coupons Category Spinner
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I select spinner from action bar
    # Action bar will be indicated by grey triangle to the right of category name
    Then I see List of categories
    #1.Includes verification of coupon categories and their coupon count.
    When I click category name
    Then I see Coupons landing page
    # 1.Selected category name is displayed the action bar title
    # 2.Coupons displayed on screen are only those within selected category
    
    @Priority2 @DigitalCoupons @TC06_DC_HU
    Scenario: DC_Hot_Not Enrolled_All Coupons Category Search
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I click on Back button
    Then Keyboard disappears
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I type search terms
    And I click on Search button in keyboard
    Then I see Coupons landing page is refreshed to display coupons related to searched term
    When I click on x icon to the right of Search field
    Then Search term is cleared
    And I see placeholder text as "Search Coupons"
    And I see Coupons landing page is displayed as previously viewed
    # Verification of coupons page with prior to searching

    @Priority2 @DigitalCoupons @TC07_DC_HU
    Scenario: DC_Hot_Page Validation_Not Verified_Verification of Coupons details page
    Given I am a hot user but not signed for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user without signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click first coupon row
    Then I verify Coupons Details page
    # 1.Includes steps for verifying Hamburger Icon, Page Title, share button
    # 2.Product image
    # 3.coupon savings/value
    # 4.coupon description
    # 5.coupon  expiration date.
    # 6.Login button is displayed.
    # 7.Coupon Terms (If applicable)
    # 8.Limits per Customer
    When I click Share button
    Then I see social apps
	  #1.Includes Facebook,Twitter,Email
  	#2.Social apps must be installed on the device to be presented as an option.
  	
    @Priority2 @DigitalCoupons @TC08_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Apply Filter On All Coupons
    Given I am a hot user but has not yet verified their mobile Phone# for Digital Coupons.
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I select Filter icon
    Then I see Scrolling selector list appears with "Default" selected options
    When I select "Newest" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Newest"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Newest" selected options
    When I select "Highest Value" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Highest Value"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Highest Value" selected options
    When I select "Expiration Date" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Expiration Date"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Expiration Date" selected options
    When I select "Popularity" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Popularity"

    @Priority2 @DigitalCoupons @TC09_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Category Spinner
    Given I am a hot user but has not yet verified their mobile Phone# for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
  	When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I select spinner from action bar
    # Action bar will be indicated by grey triangle to the right of category name
    Then I see List of categories
    #1.Includes verification of coupon categories and their coupon count.
    When I click category name
    Then I see Coupons landing page
    # 1.Selected category name is displayed the action bar title
    # 2.Coupons displayed on screen are only those within selected category
    
    @Priority2 @DigitalCoupons @TC10_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Category Search
    Given I am a hot user  but has not yet verified their mobile Phone# for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I click on Back button
    Then Keyboard disappears
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I type search terms
    And I click on Search button in keyboard
    Then I see Coupons page is refreshed to display coupons related to searched term
    When I click on x icon to the right of Search field
    Then Search term is cleared
    And I see placeholder text as "Search Coupons"
    And I see Coupons page is displayed as previously viewed
    # Verification of coupons page with prior to searching
  
    @Priority2 @DigitalCoupons @TC11_DC_HU
    Scenario: DC_Hot_Not Verified_Coupons Resend Confirmation
    Given I am a hot user but has not yet verified their mobile Phone# for Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with signing up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
  	When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Don't reply to text message Pop up "Please check your mobile phone now and reply to the H-E-B text message to activate your H-E-B Digital coupons."
    When I click on "Resend Confirmation" button
    Then I see a display confirmation dialog box
    #Includes cancel and ok button
    When I select "OK" button
    Then I see text changes for 'Resend confirmation' button
    #Includes 'Resend confirmation' button will be changed to Confirmation resent.
    #Include verification of sms sent to the mobile number associated with the login account.
    When I select any Copoun
    Then I see Coupon Detail screen with coupon detail
    #Includes a disabled red button with text "Confirmation resent"
    
       @Priority2 @DigitalCoupons @TC12_DC_HU
    Scenario: DC_Hot_Verified_Coupons Apply Filter On All Coupons
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I select Filter icon
    Then I see Scrolling selector list appears with "Default" selected options
    When I select "Newest" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Newest"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Newest" selected options
    When I select "Highest Value" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Highest Value"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Highest Value" selected options
    When I select "Expiration Date" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Expiration Date"
    When I select Filter icon
    Then I see Scrolling selector list appears with "Expiration Date" selected options
    When I select "Popularity" sort option
    Then I see Coupons page is rearranged in the order of newly selected sort "Popularity"

      @Priority2 @DigitalCoupons @TC13_DC_HU
    Scenario: DC_Hot_Enrolled_All Coupons Category Spinner
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
	  When I select spinner from action bar
    # Action bar will be indicated by grey triangle to the right of category name
    Then I see List of categories
    #1.Includes verification of coupon categories and their coupon count.
    When I click category name
    Then I see Coupons screen
    # 1.Selected category name is displayed the action bar title
    # 2.Coupons displayed on screen are only those within selected category
	 
    @Priority2 @DigitalCoupons @TC14_DC_HU
    Scenario: DC_Hot_Enrolled_All Coupons Category Search
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I click on Back button
    Then Keyboard disappears
    When I click on "Search Coupons" field
    Then Keyboard appears at bottom of screen
    When I type search terms
    And I click on Search button in keyboard
    Then I see Coupons page is refreshed to display coupons related to searched term
    When I click on x icon to the right of Search field
    Then Search term is cleared
    And I see placeholder text as "Search Coupons"
    And I see Coupons page is displayed as previously viewed
    # Verification of coupons page with prior to searching
        
    @Priority2 @DigitalCoupons @TC15_DC_HU
    Scenario: DC_Hot_Enrolled_All Coupons Share On Coupon Details Page
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I click first coupon row
    Then I verify Coupons Details page
    # 1.Includes steps for verifying Hamburger Icon, Page Title, share button
    # 2.Product image
    # 3.coupon savings/value
    # 4.coupon description
    # 5.coupon  expiration date.
    # 6.Register and Login buttons are displayed.
    # 7.Coupon Terms (If applicable)
    When I click Share button
    Then I see social apps
    #1.Includes Facebook,Twitter,Email
    #2.Social apps must be installed on the device to be presented as an option.
  
  
    @Priority2 @DigitalCoupons @TC16_DC_HU
    Scenario: DC_Hot_Enrolled_Coupon Selected Savings Coupon Details Page
    Given I am a hot user and enrolled in Digital Coupons
    # Includes steps
    # 1. open application and
    # 2. Register a new user with enrolled up for DC
    When I select Coupons from aisle
    Then user is navigated to Coupons signup page
    # Include verification of title - Coupons
    When I click View available coupons
    Then user is navigated to Coupons Landing page 
    # Include verification of title - ALL COUPONS
    When I click on Sign Up Now
    #1.Includes step for Sign Up For Digital Coupons
    #2.Includes step to activate H-E-B Digital coupons
    When I click on "Selected savings"
    Then I see "Selected savings" screen
    # Includes verification of User's clipped coupons.
    When I click first coupon row
    Then I verify Coupons Details page
    When I click on Back button
    Then I see previously selected tab
    When I click Share button
    Then I see social apps
      
      @Priority3 @DigitalCoupons @TC017_HU_DC       
       Scenario: DC_HU_Enrolled_verify Coupon Details And Selected Savings Tab
       Given I am a hot user and enrolled in Digital Coupons
       # Includes steps 
       # 1. open application and 
       # 2. Register a new user
       When I select Coupons from aisle
       Then user is navigated to Coupons sign up page
       # Include verification of title - Coupons
       When I click View available coupons
       Then user is navigated to Coupons landing page
       # Include verification of title - ALL COUPONS
       And I verify coupon cell format
       When I click on Sign Up Now
       #1.Includes step for Sign Up For Digital Coupons
       #2.Includes step to activate H-E-B Digital coupons
       When I click on a specific coupon row
       Then I verify Coupons Details page
       When I select "Select" button
       Then I see a toast message "coupon selected, button becomes disabled and now reads Selected"
       And  I verify if coupon is saved to user account as selected
       # 1.Selected coupon should be displayed in "SELECTED-SAVINGS" tab.
       # 2.Includes Verification if selected savings value is incrementing correctly
       # 3.If coupon have a saving value, application should increment selected saving value by that number.
       When I select device back button
       Then user is navigated to Coupons landing page
       # Include verification of title - ALL COUPONS
       When I select "Select Savings" tab
       Then I see SELECTED SAVINGS tab screen
       # 1.Title that reads: Selected
       # 2.Below header section, display all relevant coupons.
       # 3.Coupon row will display a check box on left corner of the row.
       # 4.Application should display the correct value for savings."
       When I select "Savings-To-Date" tab
       Then I see Savings-To-Date tab screen
       # 1.Title that reads: Savings-To-Date
       # 2.Application will display 30 day history only.
       # 3.savings-to-date tab will display savings till date.          
          
       @priority2 @DigitalCoupons @TC018_HU_DC
       Scenario: DC_HU_Not Enrolled_Coupons Detail Sign Up_Error message
       Given I am a Hot User and not yet signed up for Digital Coupons
       # Includes steps
       # 1. open application and
       # 2. Register a new user
       When I select Coupons from aisle
       Then user is navigated to Coupons signup page
       # Include verification of title - Coupons
       When I click View available coupons
       Then user is navigated to Coupons Landing page 
       # Include verification of title - ALL COUPONS
       # Include verification of title - ALL COUPONS
       When I click on a specific coupon row
       Then I verify Coupons Details page
       When I select "Sign Up Now" button in coupons overview screen
       Then I see Sign Up for Digital Coupons page
       When I Select Arrow icon at right corner of navigation bar 
       # 1.with no input for Mobile Number and 4-Digit PIN
       Then I see All the mandatory fields will be highlighted with info icon
       When I select Info Icon
       Then I see a pop up with related information
       # And I see checkbox is checked after clicking on Info icon
              
      @Priority2 @DigitalCoupons @TC019_HU_DC
      Scenario: DC_HU_Page Validation_Not Enrolled_Coupons Detail Sign Up with valid details
      Given I am a Hot User and not yet signed up for Digital Coupons
       # Includes steps
       # 1. open application and
       # 2. Register a new user
       When I select Coupons from aisle
       Then user is navigated to Coupons signup page
       # Include verification of title - Coupons
       When I click View available coupons
       Then user is navigated to Coupons Landing page 
       # Include verification of title - ALL COUPONS
       When I click on a specific coupon row
       Then I verify Coupons Details page
       When I select "Sign Up Now" button in coupons overview screen
       Then I see Sign Up for Digital Coupons page
       When I enter valid 10 digit number in Mobile Number and Confirm Mobile Number field
       Then I see user should be able to enter same number in both the field
       When I enter 4 digit pin
       Then I see user should be able to enter 4 digit pin
       When I select check box next to "I want more deals ..."  text
       Then I see box shall contain a blue check mark
       When I select arrow icon
       Then I see pop up as Check your phone Now
       # Includes verification of 
       # 1. Header: Check your phone Now
       # 2. Pop up shows a message Please check your mobile pho6ne now and reply to the H-E-B
       #    text message to activate your H-E-B Digital coupons.
       # 3. button with 'start saving text'
       When I select Start Saving
       Then I see Coupons page     
       When I click View available coupons
       Then user is navigated to Coupons landing page
       # Include verification of title - ALL COUPONS    
