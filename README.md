# JEE_project
Project Requirements
Stakeholders:
Clients:
-	They see the most popular songS of that month in the home page (HOME page)
-	They see the recommended songs in the section ‘Recommendation of the moment’ (OPTIONAL)
-	They can sign in (SIGN IN page)
-	They can sign up by entering the following information (SIGN UP page):
o	civility
o	name 
o	first name
o	email address 
o	password
o	password confirmation 
o	date of birth
o	billing address 
o	preferred style of music chosen from the following musical genres: house, pop, metal, classical, jazz.
-	They have access to the MUSIC LIBRARY page as they log in. Here they can:
o	listen to each music
o	add music to a playlist
o	Only play and stop music while listening it
o	create/delete/rename their playlists (OPTIONAL)
-	They can edit their personal information in their PROFILE page.
-	They can update the content of the site

Administrators:
o	They have to authenticate to access the ADMINISTRATION page (OPTIONAL)
o	There are two administration account profiles:
•	Customer manager profile  they can edit customer info
•	Music manager profile  they can edit info in the music library
o	Any of them has read-only access to all the site information by default whatever their account type is.
o	Music managers can create/modify/delete music catalogue
o	For statistical purposes, an administrator can consult a page listing the 10 most listened songs for the current month, as well as the 10 users who have played the most items in the library (? OPTIONAL ?).  
WEB-PAGES:
Music library page
-	Is accessible only after the user authenticates 
-	Is showing (we have to choose at least 2 out of 4 following elements):
o	Musical titles: title of the song, performer, year of creation, duration, musical genre...
o	albums (composed of a set of titles): name of the album, interpreter, year, duration
o	Podcasts: title, duration, author, category
o	radio stations: name of the radio station, musical genre
-	marks an item as the "recommendation of the moment" (OPTIONAL).
-	Lets clients manage their playlist
-	Lets clients only play and stop music (there is no need to implement all the playback feature)
-	Lets client update the content

HOME PAGE:
-	shows the most popular songs of the month
-	shows the recommended songs of the moment (OPTIONAL)
-	let client play the most popular song of the month
-	allows client to navigate through the site by showing the links to all the pages of the website (such as sign up page, sign in page and so on)

SIGN UP PAGE:
-	shows different input boxes where the client has to type in their personal information in order to register for the service. This information is:
o	civility
o	name 
o	first name
o	email address 
o	password
o	password confirmation 
o	date of birth
o	billing address 
o	preferred style of music chosen from the following musical genres: house, pop, metal, classical, jazz.
-	A check if the username is not already used (and other check constraints can be taken into account if we have time, such as birthday date).
-	shows a button to confirm or cancel the operation
-	(we can take github as example)

SIGN IN page:
-	(we can take github as example)
-	Shows two input boxes one for the email/username and the other for the password
-	An option to reset the password if it has been forgotten. 
-	Shows a confirm and cancel button

PROFILE PAGE
-	Lists all the client’s personal information 
-	Let client edit their own personal information
-	(the possibility to log out ?)
-	Shows a confirm and cancel button
-	Is accessible only after the user authenticates 

? ADMINISTRATION PAGE ?



QUESTION
-	How to manage the two administrators’ account types?
