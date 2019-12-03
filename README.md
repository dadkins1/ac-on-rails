# README
The ac-on-rails application is a prototype of a backend system to integrate air conditioning devices in one, easy-to-use web application.
There are two primary components of this application: the web app and the Device API.

Web App Highlights:
* The home page lists all devices registered via the Device API
* The home page allows the user to search for a device by serial number (fuzzy search)
* The home page links to a page displaying all data for a given device
* The home page links to a page which describes how to use the Device API

Device API Highlights (see /api endpoint for detailed instructions):
* Add a Device 
* Remove a Device (no backup is created, BE CAREFUL!)
* Add Data to a Device
* Remove Data from a Device (no backup is created, BE CAREFUL!)


BUILDING:

This app was built using Ruby 2.5.1 and Rails 6.0.1. Other versions may work but are not guaranteed. For other specific dependencies, see the Gemfile. This is a fairly typical Rails application, so there should be no surprises in how to build it:

1. Clone the repository
  * `git clone https://github.com/dadkins1/ac-on-rails.git`
2. Check that the required versions of Ruby and Rails are installed
  * `ruby -v`
  * `rails -v`
3. Install Gemfile prerequisites
  * `bundle install`
  * `yarn`
4. Create the database schema (requires PostgreSQL)
  * `rails db:create db:migrate`
5. Run the server locally
  * `rails s`


DEPLOYING:

This app deploys to Heroku using the Heroku CLI. There is one-time setup to add a collaborator (contact the original owner to be added) and add Heroku as a remote. After that, deploying to the live server is as simple as running `git push heroku` (where 'heroku' is the name of the Heroku remote).


NEXT STEPS:

This prototype was built in a "time is of the essence" frame of mind. As such, you'll find no unit tests here (although they probably would have actually helped _shorten_ development time by automating some of my manual testing!).
Here are a few other things I would like to suggest given more time:
1. An architectural review
  * I'm a Rails newbie. I'm sure some things could have been done better.
2. More features
  * I didn't implement all of the requested features. Software is never truly "done", so there are always more things to add!
3. A menu system!
  * I thought about adding a menu system, but that would not have done much for such a small prototype, so I skipped it in the interest of time.
4. A More Polished UI
  * This UI is pretty crude. Images are important. A better workflow with more user stories would really help improve the User Experience of the web app!
5. Better Separation of the Web App and Device API
  * About halfway through I realized that these two pieces were getting more intertwined than they should have been. This is a major architectural flaw in my opinion and should be corrected (see #1).
6. A More Robust Device API
  * The DELETE commands permanently remove things. Like forever deletion with no way to recover the data. Even worse, the databases on Heroku are never backed up. This works ok for a prototype, but this would be a huge no-no for a production API. Similarly, there is no authentication for device API commands or even login/logout of the web app. We decided to remove these requirements for the prototype to focus on things which would have a bigger impact. After all, what's the point of a login/logout page if the app doesn't do anything interesting?
