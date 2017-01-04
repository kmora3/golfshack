stuff I'm using:

Raty: star rating library
Devise: user authentication
Bootstrap
Bootswatch
Bootstrap_forms
geocoder	
# Golfshack

## **Description**

Golfshack is a site that allow golf enthusiasts to share their reviews on golf courses. Users can add new courses and rate courses added by themselves or others. The idea is a yelp-like app for golfers!


## **User Stories**

* As a user I need to be able to create a profile with the follwing fields:
	* email (username)
	* password (6 character requirement)
	* First Name
	* Last Name 
* As a user, I need to be able to update my profile
* As a user, I need to be able to delete my account
* As a user, I need to be able to add courses to the site. Course attributes include:
	* course name
	* address
	* city
	* state
	* zip
	* latitude
	* longitude
	* count of holes 		
* As a user, I should be able to rate the course on a scale of 1 to 5
* As a user, want to be able to add comments to the review
* As a user, I should be able to see the average rating for each course



## **Wireframes**

#####Logic Whiteboard
![Game Board](https://raw.githubusercontent.com/kmora3/war/master/img/whiteboard_logic.JPG)

#####Game Board
![Game Board](https://raw.githubusercontent.com/kmora3/war/master/img/Game_Board.png)

#####Player 1 Wins Hand
![Player1Wins](https://raw.githubusercontent.com/kmora3/war/master/img/Player_1_Wins.png)

#####Player 2 Wins Hand
![Player2Wins](https://raw.githubusercontent.com/kmora3/war/master/img/Player_2_Wins.png)

#####Player 1 Wins GAme
![Player1WinsGame](https://raw.githubusercontent.com/kmora3/war/master/img/Player1_Wins_Game.png)

## **Technologies/Tools Used**
* Ruby
* Ruby on Rails
* jQuery
* Google Web Fonts
* Trello (Project Tracking)
* Balsamiq (Wireframing)
* GEM: Raty - a star rating library
* GEM: Devise - user authentication/forms/logic
* GEM: Bootstrap
* GEM: Bootswatch - Superhero theme
* GEM: Geocoder - gem to calculate lat/long
* GEM: Paperclip - photo upload

## **Credit/References**
* **Video Tutorial**: [https://www.youtube.com/channel/UCB61JUulUDUhglJNFcLnRmA/about]()
* **Paperclip Video Tutorial**: [https://www.youtube.com/watch?v=Z5W-Y3aROVE&t=304s]()


## **Feature Backlog**
* Integrate Google Maps
* Implement more visuals
* Email Confirmation
* Load courses nationwide using public API

## **Known Bugs**
* Pictures won't load locall and won't save to AWE :(
* Warnings not all styled correctly