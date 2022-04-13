![](https://img.shields.io/badge/Microverse-blueviolet)

# "Stay in touch" Social Media Website

This social media app allows users to create posts, friend other users and then like and/or comment their posts.


Only signed-in users can have access to the apps features. When Logged-in, a user is able to see a list of all users / to see “Timeline” page with posts (with number of likes and comments) written by him and all his friends (the most recent posts on the top) / to see a selected user page with their user name and all posts written by them (the most recent posts on the top) /  to create new posts (text only) / to like/dislike posts (but can like single post only once) / to add comments to posts / to send friendship invitations / to accept or reject friendships invitation / to see pending friendship invitations sent to him from other users.


## Live Preview

https://cobian-social-media.herokuapp.com/


## Getting Started

To get a local copy up and running follow these simple example steps:


### Prerequisites

* Ruby 2.7.0
* Rails 5.2.4
* Postgres: >=9.5
* SQLite3
* Node.js
* Yarn


### Setup and Install

* Open your terminal - Windows: `Win + R`, then type `cmd` | Mac: `Command + space`, then type `Terminal`
* Navigate to a directory of your choosing using the `cd` command
* Run this command in your OS terminal: `git clone git@github.com:kiranitor123/private-events.git` to get a copy of the project
* Navigate to the project's directory using the `cd` command
* Migrate the database to your environment by running `rails db:migrate`
* Run `rails webpacker:install` to configure Webpacker for your environment. Otherwise, an error like `Webpacker::Manifest::MissingEntryError` will appear if you attempt to run the server
* Install dependencies by running `bundle install`
* Execute `rails server` to fire up the server
* Visit `http://localhost:3000/` in your browser to get into the app
* Interact with the app using the links in the nav bar. To access private pages, sign up by clicking the `Sign Up` link
* Interact with the app
* To close the server, enter `Ctrl + C` in your terminal

## API Endpoints

* To list all posts:

Input this link in request url: `http://localhost:3000/api/posts`

`Status: 200 OK` should be displayed and all posts data should be showing up in the body.
![List posts](/app/assets/images/ "list posts display")

* To list comments for given post:

Input this link in request url: `http://localhost:3000/api/posts/:post_id/comments`, where `:post_id` is the id for the post you are selecting.

`Status: 200 OK` should be displayed and all the comments data should be showing up in the body.
![List comments](/app/assets/images/ "list comments display")

* To create comments:

Set your HTTP request to POST. Post requests are different from Get request as there is data manipulation with the user adding data to the endpoint. 

Input this link in request url: `http://localhost:3000/api/posts/comment`

Select JSON as the format for the request (Online Post request should have the correct format to ensure that requested data will be created. It is a good practice to use Get first to check the JSON format of the request. You can use tools like https://jsonformatter.curiousconcept.com/)

You must now create a user to proceed. First obtain the list of comments using the Get request (as in the previous instruction bullet point), let’s now add our own user. Copy and paste just one user result from the previous get request into the body of the request.

Ensure that the code has been copied correctly with paired curly braces and brackets. Change id by adding 1 to the number of the last id listed (for example, if the last id is 10 change it to 11) and change the name to any desired name. You can also change other details like the address.

And finally you can create a new comment with the POST method sending the comment as JSON. `Status: 201 Created` should be displayed and posted data should be showing up in the body.

![Create comment](/app/assets/images/ "create comment display")


## Authors

👤 **Rolando Alvarez Faye**

* GitHub: [@Rolando](https://github.com/kiranitor123)
* Twitter: [@rolando](https://twitter.com/FayeRolando)
* LinkedIn: [Rolando](https://www.linkedin.com/in/rolando-diego-alvarez-faye-b2b34a1a9/)

👤 **Maha Magdy**

* GitHub: Maha-Magdy
* Twitter: @Maha_M_Abdelaal
* LinkedIn: Maha Magdy

👤 **German Cobian**

* GitHub: [@German-Cobian](https://github.com/German-Cobian)
* Twitter: [@GermanCobian1](https://twitter.com/GermanCobian1)
* LinkedIn: [@german-cobian](https://www.linkedin.com/in/german-cobian/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

Guidelines for this project supplied by [Microverse](https://microverse.pathwright.com/library/fast-track-curriculum/69047/path/step/49736080/)


## 📝 License

This project is [MIT](https://github.com/German-Cobian/Re-former/blob/re-former-feature/LICENSE) licensed.
