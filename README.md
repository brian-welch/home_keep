<h2>Connectitude: Technical Test</h2>
<hr>
<p>Per the specifications below:</p>
<p><strong>Allmänt</strong><br>
Uppgiften är att göra en lösning för ett hemautomationsscenario. I den lösningen ingår det att utveckla en frontend som presenterar data på ett passande vis.</p>
<p><strong>Scenario</strong><br>
Företaget har fått in en förfrågan om att ta fram en lösning åt en kund som vill få kontinuerlig information om bl.a. temperatur, luftfuktighet etc från ett eller flera av rummen i sin fastighet. Åtkomst till informationen ska man få via en web-app. Din uppgift är primärt att att skriva koden för front-end. Om du besitter kunskaper att skapa en backend får du såklart även gör det. Annars räcker det med mockad data från exempelvis en service (Kravet är dock att datan uppdateras dynamiskt).</p>
<p><strong></strong><br></p>
<hr>
<p>Per communications with Christian Falck (here after called Connectitude), I was directed to form out the webapp with the msot confortable tools at my disposal. As such, I have chosen Ruby on Rails. Like Angular, Rails is an MVC architecture, although it lacks the preformance of a single page, non-server request webb-app. Like Angualr, Rails is developed with RESTful url architecture.</p>
<hr>
<p>In order to experience the UX/UI, you will have to visit the demo project viewable <a href="https://con-acs.herokuapp.com/">HERE</a>. The username for the app is "demo@demo.com" and the password is: "demo". Placeholders and an alert message can also remind you on the login page.</p>
<hr>
<p><strong>Added Fields</strong><br>
To add some sense of creditbility and presentation, some additional data was added to the web app above merely temp and humidity. Additional data include user fields such as, name, job title, and user role. For the building model, fields such as geography, building type, and relational link to a user was added. The Room model has added, size in square meters, ventilation type, and whether or not the room has access to outside air(windows).<br><br>Finally a log table was added user for data analysis.</p>
<p><strong>Seed Data</strong><br>
A reasonable amount of focus we put into adding a somewhat realistic set of data from which to test the web-app. Though there are obvious istances where seed data conflicts with common sense and normal observation.</p>
<hr>
<p><strong>Design</strong><br>
For the most part, this web app was designed with mobile first philosophy.l To most efficiently facilitate the construction of the site, Bootstrap was used. Every effort was made to prevent it form looking 'too Bootstrapy', though in the given time, it was difficult to completely diverge from the Bootstrap vibe. On the building and room detail pages, a placholder floor plan was injected. In a functional app, these would be replaced by actual diagrams of the properties.</p>
<hr>
<p><strong>Observed Deficencies</strong><br>
While in general the url architecture follows a RESTful model, there is some polishing to be done to limit broken page links or other potential hazaards should a user try to test his/her own routes. I have not yet configured the proper server warnings either to this end (404 pages etc). There do aso exist some UX bugs when viewing the site on intermediate size screens, which could also be looked after in greater detail.</p>
<p><strong>Improvements</strong><br>
Aside from the obvious (using a put Angular framework and the speed of a single page app), other improvements would be even more fields to add to the models. Fields such as: cardinal directional orientation, air exchange rates for the rooms, height of the rooms to get volume. Also, a UX where the floor plan of the bulding or floor took center stage, and rollover/click actions on the graphical element would reveal the room data, would be an exciting tactic.</p>
<hr>
<p><strong>Note From the Programmer</strong><br>
I appreciate the oportunity to complete this task as part of the recruiting process. Any consideration is a complement. I'd also like to sell myself in as a candidate, not because I am the most skilled, but because my personality reveals a person of in saciable desire to learn and grow and become better. Additionally, I am open to a 'non traditional' arrangement as a junior developer on your team. I am fully prepared to take a 'part time' placement whilst working full time for an agreed amount of time, whilst my Angular familiarity and training are progressing.</p>

