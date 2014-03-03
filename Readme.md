
Client does not know how to write HTML or Ruby and needs a static html website converted to a blogging platform. 
Taking a static html website and putting it on rails. 



Milestone 1 - MVP
Take current static website and put it on rails - header, nav bar, side bar, content div. 

Skeleton (responsive)

Milestone - 2
Integrate with backbone (named content divs)

---- Deliverable -----

Milestone - Educational MVP
Test drive CMS integration

---- Deliverable -----

Milestone - Incorperate a CMS - need user stories
  Blogging Application
  CMS integration through tumblr API
---- Deliverable -----

Milestone
  Make photos on home page cycle.

---- Deliverable -----

Icebox
- Use code climate to refactor: https://codeclimate.com/github/signup
- Use Travis CI - https://travis-ci.org/
- Allow for pull requests (managing an open source project)
- "You are not Invincible" > Invisible > Forgotten > Invincible"
- Policy reform through heartfelt story telling. In memoriam.
  - Instead of likes a reader can place a rose on the memoriam. 
    http://www.thinkstockphotos.com/image/stock-illustration-ink-style-sketch-set-summer-flowers/457048637

- Use D3 to visualize shocking/engaging statistics. Or even how many many funeral flowers each story has.

- Change voulenteer from a form to a different blog where the user can describe what they need help with.

- Integrate in memoriam with donate.

- Add paralax to the home photo instead of scrolling images.


Reasons for choosing this project:

- Demonstrate that I can work with a design and deliver in code what a designer has provided with a templating program like adobe.
- Contribute to an nobel opensource project
- Maintain an open source project and work with a community of developers.
- Create a rails backend for working with a foriegn CMS portal which I can opensource for others to use.


Resources: 
http://www.webmonkey.com/2010/02/get_started_with_tumblr/

https://www.pivotaltracker.com/s/projects/1025208
http://guides.rubyonrails.org/layouts_and_rendering.html
http://line25.com/tutorials/how-to-create-a-pure-css-dropdown-menu
http://codepen.io/edwardloveall/pen/EcIkb
http://github.hubspot.com/drop/overview/embedding_drop/
http://railscasts.com/episodes/328-twitter-bootstrap-basics?view=asciicast
http://getbootstrap.com/
https://github.com/tumblr/tumblr_client
API Docs: http://www.tumblr.com/docs/en/api/v2
Gem docs: https://github.com/tumblr/tumblr_client

***Design Choices

Turbolinks vs Backbone
	Turbolinks allows for SEO without any further work
	>Backbone will require http://www.seo4ajax.com/ or http://phantomjs.org/ but will offer a better learning experience, both optimizing a single page app and using backbone itself.

Used the has_and_belongs_to_many for tag & tumblr_posts incase user adds multiple tags, even if they are directed not to.

API call
Do I put the api call on a heroku job at "publishing times" or put in the view that whenever its hit it checks to see the last time the api was called and if it wasn't done int he last 10 minutes it checks tumblr
or, since its a small site, just do the call every time