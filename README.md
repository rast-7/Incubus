# INCUBUS

Incubus is a web app in Rails that does two things:

* Allows a user to log in through a username and password.
* Using Last.fm API, build a search and recommendation engine that does the following:
	* After user logs in, the user is offered a search box that allows user to enter an Artist name. When user hits search, user is given information about the artist (artist's music tracks etc) and a  list of similar/recommended artists.
	* Artist name that is searched gets stored in user's search history and can be viewed post log in.
---

# Installation

In order to try Incubus on your system, follow the below commands:

```sh
git clone https://github.com/rast-7/Incubus.git
cd Incubus
bundle install
rails db:migrate
rails server
```

---

# Test

In order to run the test, follow the below command:

```sh
rails test
```

