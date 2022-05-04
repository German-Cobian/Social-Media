![](https://img.shields.io/badge/Microverse-blueviolet)

# "Stay in touch" Social Media Website

This social media app allows users to create posts, friend other users and then like and/or comment their posts.


Only signed-in users can have access to the apps features. When Logged-in, a user is able to see a list of all users / to see “Timeline” page with posts (with number of likes and comments) written by him and all his friends (the most recent posts on the top) / to see a selected user page with their user name and all posts written by them (the most recent posts on the top) /  to create new posts (text only) / to like/dislike posts (but can like single post only once) / to add comments to posts / to send friendship invitations / to accept or reject friendships invitation / to see pending friendship invitations sent to him from other users.


## Getting Started

To get a local copy up and running follow these simple example steps:


### Prerequisites

* Ruby 2.7.0
* Rails 5.2.4
*Postgres: >=9.5
* SQLite3
* Node.js
* Yarn


### Setup and Install

* Open your terminal - Windows: `Win + R`, then type `cmd` | Mac: `Command + space`, then type `Terminal`
* Navigate to a directory of your choosing using the `cd` command
* Run this command in your OS terminal: `git clone git@github.com:kiranitor123/private-events.git` to get a copy of the project
* Navigate to the project's directory using the `cd` command
* Migrate the database to your environment by running `rails db:migrate`
* Run `rails webpacker:install` to configure Webpacker for your environment. Otherwise, an error like `Webpacker::Manifest::MissingEntryError` will appear if you attempt to run the server.
* Install dependencies by running `bundle install`
* Execute `rails server` to fire up the server
* Visit `http://localhost:3000/` in your browser to get into the app
* Interact with the app using the links in the nav bar. To access private pages, sign up by clicking the `Sign Up` link
* Interact with the app
* To close the server, enter `Ctrl + C` in your terminal

### API Endpoints

* To list all posts:

Input this link in request url: `http://localhost:3000/api/posts`

Status: 200 OK should be displayed and all posts data should be showing up in the body.

* To list comments for given post:

Input this link in request url: `http://localhost:3000/api/posts/:post_id/comments`, where :post_id is the id for the post you are selecting.

Status: 200 OK should be displayed and all the comments data should be showing up in the body.

* To create comments:

Set your HTTP request to POST. Post requests are different from Get request as there is data manipulation with the user adding data to the endpoint.

You must first create a user to proceed. To do so, input this link in request url: `http://localhost:3000/api/v1/users`. Input your user information to include the keys "name", "email", "password", and "password_confirmation" in the body of the request. Ensure that the code has been copied correctly with paired curly braces and brackets. Send the request as JSON. 

![Inputting user](/app/assets/images/inputting_user.png?raw=true "Inputting of user" )

A token will be provided in the output. Copy the token and paste it into the box displayed by the "Bearer Token" option of the "Authorization" section. Input `http://localhost:3000/api/v1/posts/:post_id/comments` into the HTTP request, which is set to POST. Send the comment as JSON.

![Inputting token](/app/assets/images/inputting_token.png?raw=true "Inputting of token")

And finally you can create a new comment. The HTTP request should remain as `http://localhost:3000/api/v1/posts/:post_id/comments`, set to Post and the comment in JSON format. Input the comment with the "content" key and ensure that the code has been inputted correctly with paired curly braces and brackets.

![Inputting comment](/app/assets/images/inputting_comment.png?raw=true "Inputting of comment")

Status: 201 Created should be displayed and posted data should be showing up in the body.

## Authors

👤 **Rolando Alvarez Faye**

* GitHub: [@Rolando](https://github.com/kiranitor123)
* Twitter: [@rolando](https://twitter.com/FayeRolando)
* LinkedIn: [Rolando](https://www.linkedin.com/in/rolando-diego-alvarez-faye-b2b34a1a9/)

👤 **German Cobian**

* GitHub: [@German-Cobian](https://github.com/German-Cobian)
* Twitter: [@GermanCobian3](https://twitter.com/GermanCobian3)
* LinkedIn: [@german-cobian](https://www.linkedin.com/in/german-cobian/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

* Microverse


## 📝 License

This project is [MIT](https://github.com/German-Cobian/Re-former/blob/re-former-feature/LICENSE) licensed.# README
