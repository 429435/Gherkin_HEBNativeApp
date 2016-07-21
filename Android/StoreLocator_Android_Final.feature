27/07/2016: Android_Store Locator

Feature: Store Locator feature

@Priority3 @StoreLocator @TC01_SL_CU
Scenario: SL_Cold_Page elements validation_Store Locator screen_Map View
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on users current location
		# 1. Includes verification of Title as "Store Locator"
	And I verify navigation bar of Store Locator screen for Map View
		# 1. Includes verification of Hamburger sign on the left hand of action bar
		# 2. Title should be Store Locator
		# 3. List icon on right-side of action bar
		# 4. Refine button on right-side of action bar
	And I verify Search Text field
		# 5. Below Navigation bar search Text displaying with default text as "Search by Zip code or City/State"  
	And I verify Maps 
		# 6. Includes verification of displaying Google Maps with Mobile current location
		# 7. Below Search Text field, Target icon displays on right corner of Maps 
		# 8. Includes displaying red pin points for store locations
	When I select on a store from Map View 
	Then I see White information bubble
	And I verify White information bubble
		# 1. Includes below verification 
		# 2. <Street Address>
		# 3. <Store Name>
		# 4. Right arrow image


@Priority3 @StoreLocator @TC02_SL_CU
Scenario: SL_Cold_Page elements validation_Store Locator screen_List View
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	Then I see Store Locator screen in list view
		# 1. Includes verification of Map view Icon
	And I verify navigation bar of Store Locator screen for List View
		# 1. Includes verification of Hamburger sign on the left hand of action bar
		# 2. Title should be Store Locator
		# 3. Map view icon on right-side of action bar
		# 4. Refine button on right-side of action bar
	And I verify Search Text field
		# 5. Below Navigation bar search Text displaying with default text as "Search by Zip code or City/State"
	And I verify store lists
		# 6. Includes verifying below store information for each stores in the list
		# 6a. <Store Name>
		# 6b. <Street Address>
		# 6c. <City, State, Zip code>
		# 6d. <Distance> away
		# 6e. <Attribute icons> (if any)
		# 7. Right arrow icon for each store list** 
	
@Priority3 @StoreLocator @TC03_SL_HU
Scenario: SL_Hot_Page elements validation_Store Details screen_choosing store from List view 
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	Then I see Store Locator screen in list view
		# 1. Includes verification of Map view Icon
	When I select on a store from List View 
	Then I see Store Details screen of Hot user
		# 1. Includes verification of displaying "Set as My Store" or "My H-E-B Store"
	And I verify Store Details screen navigation bar
		# 1. Includes verification of Hamburger sign on the left hand of action bar
		# 2. Includes verification of Page title as "Store Details"
	And I verify Store Details screen information of Hot user
		# 1. Includes below store details validations
		# 1a. <Store Name> #### check whether its present or not no need to validate
		# 1b. <Street Address> #### check whether its present or not no need to validate
		# 1c. <City, State, Zip code> #### check whether its present or not no need to validate
		# 2. Get Directions image + "Get Directions" link
		# 3. "Store Hours:" text and Working days and working hours(Opening - Closing)
		# 4. Phone image + <Store phone number> link
		# 5. Dollar image + "View Weekly Ad" link 
		# 6. Star image + "See Store Features" link 
	And I verify Pharmacy details 
		# 1. Applicable only if selected store have pharmacy facility 
		# 2. Includes "Pharmacy" label
		# 3. "Hours" + Working days with Working Hours
		# 4. "Pharmacy Phone:" text and phone number link
	When I click "See Store Features" link
	Then I see Store Features screen
		# 1. Includes validating page title as "Store Features"
	And I verify Store Features attributes
		# 1. Includes listing all feature attributes of selected store
		# 2. Scroll down and verify if user can check till end of the page

		
@Priority3 @StoreLocator @TC04_SL_HU
Scenario: SL_Hot_Page elements validation_Store Details screen choosing store from Map view 

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user current location
		# 1. Includes verification of Title as "Store Locator"
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	Then I see Store Details screen of Hot user
		# 1. Includes verification of displaying "Set as My Store" or "My H-E-B Store"
	And I verify Store Details screen navigation bar
		# 1. Includes verification of Hamburger sign on the left hand of action bar
		# 2. Includes verification of Page title as "Store Details"
	And I verify Store Details screen information of Hot user
		# 1. Includes below store details validations
		# 1a. <Store Name> #### check whether its present or not no need to validate
		# 1b. <Street Address> #### check whether its present or not no need to validate
		# 1c. <City, State, Zip code> #### check whether its present or not no need to validate
		# 2. Get Directions image + "Get Directions" link
		# 3. "Store Hours:" text and Working days and working hours(Opening - Closing)
		# 4. Phone image + <Store phone number> link
		# 5. Dollar image + "View Weekly Ad" link 
		# 6. Star image + "See Store Features" link 
	And I verify Pharmacy details 
		# 1. Applicable only if selected store have pharmacy facility 
		# 2. Includes "Pharmacy" label
		# 3. "Hours" + Working days with Working Hours
		# 4. "Pharmacy Phone:" text and phone number link
	When I click "See Store Features" link
	Then I see Store Features screen
		# 1. Includes validating page title as "Store Features"
	And I verify Store Features attributes
		# 1. Includes listing all feature attributes of selected store
		# 2. Scroll down and verify if user can check till end of the page


@Priority3 @StoreLocator @TC05_SL_CU
Scenario: SL_Cold_Page elements validation_Store Locator screen_Refine
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on users current location
		# 1. Includes verification of Title as "Store Locator"
	When I select Refine button
	Then I should see Refine Stores screen
	# 1. Includes verifying Title as "Refine Stores"
	And I verify Navigation bar of Refine Stores screen
	# 1. Includes verifying Hamburger icon in left top corner
	# 2. Verifying tick mark (Done button) in right top corner
	And I verify Refine Stores screen information
	# Includes verifying of displaying below refinements
	# 1. Pharmacy image + "Pharmacy" 
	# 2. Fuel image + "Fuel"
	# 3. Car Wash image + "Car Wash" 
	# 4. H-E-B Plus! image + "H-E-B Plus!"
	# 5. Open 24 Hours image + "Open 24 Hours"
	# 6. 24 Hour Pharmacy image + "24 Hour Pharmacy"
	# 7. Includes verifying buttons with default OFF mode displayed for all refinements
	When I click Done icon
	Then I see Store Locator screen in map view
	# 1. Includes verification of Title as "Store Locator"

@Priority3 @StoreLocator @TC06_SL_CU
Scenario: SL_Cold_Page elements validation_Store Details screen_choosing store from List view 
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on users current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	Then I see Store Locator screen in list view
		# 1. Includes verification of Map view Icon
	When I select on a store from List View 
	Then I see Store Details screen of Cold user
		# 1. Includes verification of not displaying "Set as My Store" or "My H-E-B Store"
	And I verify Store Details screen navigation bar
		# 1. Includes verification of Hamburger sign on the left hand of action bar
		# 2. Includes verification of Page title as "Store Details"
	And I verify Store Details screen information of Hot user
		# 1. Includes below store details validations
		# 1a. <Store Name> #### check whether its present or not no need to validate
		# 1b. <Street Address> #### check whether its present or not no need to validate
		# 1c. <City, State, Zip code> #### check whether its present or not no need to validate
		# 2. Get Directions image + "Get Directions" link
		# 3. "Store Hours:" text and Working days and working hours(Opening - Closing)
		# 4. Phone image + <Store phone number> link
		# 5. Dollar image + "View Weekly Ad" link 
		# 6. Star image + "See Store Features" link 
	And I verify Pharmacy details 
		# 1. Applicable only if selected store have pharmacy facility 
		# 2. Includes "Pharmacy" label
		# 3. "Hours" + Working days with Working Hours
		# 4. "Pharmacy Phone:" text and phone number link
	When I click "See Store Features" link
	Then I see Store Features screen
		# 1. Includes validating page title as "Store Features"
	And I verify Store Features attributes
		# 1. Includes listing all feature attributes of selected store
		# 2. Scroll down and verify if user can check till end of the page
	

@Priority1 @StoreLocator @TC07_SL_CU
Scenario: SL_Cold_Verify user can navigate into store locator select a store and select store phone number
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Phone Number link
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on store phone number
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	Then I click on cancel 
	Then I click on device Back button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on store phone number
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	When I click on Leave App
	Then I see Dialer screen
	# 1. Includes displaying the store phone number in Dialer screen
	
	
@Priority1 @StoreLocator @TC08_SL_CU
Scenario: SL_Cold_Verify user can navigate into store locator and select weekly ad
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Phone Number link
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on View Weekly Ad link
	Then I see weekly ad screen
	# 1. Includes verification of Hamburger icon on left hand corner of action bar
	# 2. category spinner with "Featured" as the default text
	# 3. SELECT ALL button on right hand corner of navigation bar
	# 4. + icon to left of select all button
	# 5. Below navigation bar, display search bar with default text "search for products"
	# 6. Below Search bar display store address on left hand corner of header.
	# 7. view another store button on right hand corner of header.
	
@Priority1 @StoreLocator @TC09_SL_CU
Scenario: SL_Cold_Verify user can navigate and select store directions from store locator

	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Phone Number link
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on Get Directions
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	Then I click on cancel 
	Then I click on device Back button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on Get Directions
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	When I click on Leave App
	Then I see Maps screen
	# 1. Includes displaying the Map Application
	

@Priority1 @StoreLocator @TC010_SL_CU
Scenario: SL_Cold_Verify user can navigate and select store through search and Target icons
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on Search Field label
	Then I see keyboard
	When I enter <Texas City>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected City
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verification of map focus on searched <Texas City>
	When I click Target icon
	Then I see Store Locator screen in map view focusing on user's current location
	#  Includes verification of map accurately focused on user's current location
	When I enter <Texas Zip Code>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected Zip Code
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verification of map focus on searched <Texas Zip Code>
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	
	
	
@Priority1 @StoreLocator @TC011_SL_CU
Scenario: SL_Cold_Verify user can navigate and select store using Refine option
	
	Given I am a Cold User
		# Include steps to Open App
		# 1. Click "Continue without registering" button if Login Splash page is displayed 
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I select Refine button
	Then I see Refine Stores screen
	When I select at least 1 refinement icon
	Then I see "ON" icon in Blue color
	When I click on Select Done icon
	Then I see Store Locator screen in Map view with selected attribute refinements
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verifying stores with selected attribute refinements
	When I click on List View icon
	Then I see Store Locator screen in List view
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	


@Priority1 @StoreLocator @TC012_SL_HU
Scenario: SL_Hot_Verify user can navigate into store locator select a store and select store phone number
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on store phone number
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	Then I click on cancel 
	Then I click on device Back button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on store phone number
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	When I click on Leave App
	Then I see Dialer screen
	# 1. Includes displaying the store phone number in Dialer screen
	
	
@Priority1 @StoreLocator @TC013_SL_HU
Scenario: SL_Hot_Verify user can navigate into store locator and select weekly ad
	
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Phone Number link
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on View Weekly Ad link
	Then I see weekly ad screen
	# 1. Includes verification of Hamburger icon on left hand corner of action bar
	# 2. category spinner with "Featured" as the default text
	# 3. SELECT ALL button on right hand corner of navigation bar
	# 4. + icon to left of select all button
	# 5. Below navigation bar, display search bar with default text "search for products"
	# 6. Below Search bar display store address on left hand corner of header.
	# 7. view another store button on right hand corner of header.
	
@Priority1 @StoreLocator @TC014_SL_HU
Scenario: SL_Hot_Verify user can navigate and select store directions from store locator

	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on List View icon
	When I select on a store from List View 
	Then I see Store Details screen of cold user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	When I click on Get Directions
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	Then I click on cancel 
	Then I click on device Back button
	Then I click on Map view icon 
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	When I click on Get Directions
	Then I see a Pop Up as "Are you sure you want to leave the app?"
	When I click on Leave App
	Then I see Dialer screen
	# 1. Includes displaying the Map Application
	

@Priority1 @StoreLocator @TC015_SL_HU
Scenario: SL_Hot_Verify user can navigate and select store through search and Target icons
	
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on Search Field label
	Then I see keyboard
	When I enter <Texas City>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected City
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verification of map focus on searched <Texas City>
	When I click Target icon
	Then I see Store Locator screen in map view focusing on user's current location
	#  Includes verification of map accurately focused on user's current location
	When I enter <Texas Zip Code>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected Zip Code
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verification of map focus on searched <Texas Zip Code>
	When I select on a store from Map View 
	Then I see White information bubble
	When I click on white information bubble
	Then I see Store Details screen of Hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	
	
	
@Priority1 @StoreLocator @TC016_SL_HU
Scenario: SL_Hot_Verify user can navigate and select store using Refine option
	
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I select Refine button
	Then I see Refine Stores screen
	# Includes verifying below refinements
	# 1. Pharmacy 
	# 2. Fuel
	# 3. Car 
	# 4. Wash
	# 5. H-E-B Plus!
	# 6. Open 24 Hours
	# 7. 24 Hour Pharmacy
	When I select at least 1 refinement icon
	Then I see "ON" icon in Blue color
	When I click on Select Done icon
	Then I see Store Locator screen in Map view with selected attribute refinements
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verifying stores with selected attribute refinements
	When I click on List View icon
	Then I see Store Locator screen in List view
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	When I select on a store from List View 
	Then I see Store Details screen of Hot user
		# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
		# 2. Includes Phone Number link
		# 3. Includes Set as your Store link / My H-E-B store link
		# 4. Includes View Weekly Ad, See Store Features link
		# 5. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
		
@Priority1 @StoreLocator @TC17_SL_HU
Scenario: SL_Hot_Verify user can change their HEB store from store locator
	Given I am a Hot User
		# Includes steps 
		# 1. open application and 
		# 2. Login as an user
	When I click on Store Locator from aisle
	Then I see Store Locator screen in map view focusing on user's current location
		# 1. Includes verification of Title as "Store Locator"
	When I click on Search Field label
	Then I see keyboard
	When I enter <Texas City>
	When I click Search button on keyboard
	Then I see Store Locator screen in map view for the selected City
	# 1. Includes verification of Hamburger sign on the left hand of action bar
	# 2. Title should be Store Locator
	# 3. List icon on right-side of action bar
	# 4. Refine button on right-side of action bar
	# 5. Below Navigation bar Search Text field  and Target icon below it
	# 6. Includes verification of map focus on searched <Texas City>
	When I select a store from Map view
	Then I see White information bubble
	# 1. Includes verification of <Street Address> and <Store Name>
	When I click on white information bubble
	Then I see Store Details screen of hot user
	# 1. Includes Store Name + Address, Get Directions link, Store Hours (Opening - Closing)and store phone number
	# 2. Includes View Weekly Ad, See Store Features link
	# 3. Includes pharmacy hours and phone # (only displayed if selected store has a Pharmacy)
	# 4. Includes verification of My H-E-B Store/Set as My Store link
	When I click Set as My Store link
	Then I see Set As My Store Option changes to My HEB Store
	# 1. Includes Login Required pop up validation when multiple users are logged in
	# 2. and mobile device is inactive for 30 minutes
	When I select Hamburger Menu
	When I scroll down
	Then I see selected HEB store is updated as my store
	# Includes comparison and verification of HEB store details
	
