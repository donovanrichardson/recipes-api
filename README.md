# W08-D03

# Recipes API Part 1

## Part1 - create a new app

In this homework series, we are going to build a fully-functional recipes API. We can create our Rails app using the following command:

```bash
rails new recipes-api --api
```

## Part2 - create a model

Let's go ahead and create a new model named `Category`. First navigate into the new project directory by typing `cd recipes-api`, then use the following command to generate the model:

```bash
rails g model Category
```

The table for this model needs to have the following fields:

```ruby
t.string :title
t.bigint :created_by
```

>Think: In which file should you add the two lines above? What is `t`?

Once you're done customizing the migration, you can create the table in the database using `rails db:migrate`.

The diagram for your `Category` model should look like this:

![Model categories](categories-erd.png)

## Part3 - adding a controller

Now that our first model is all set up, let's generate the controller.

```bash
rails g controller Category
```

This creates a new file at `recipes-api/app/controllers/category_controller.rb`.

In that file, go ahead and create all the REST controller methods. The RESTful API must consist of the following endpoints:

|Prefix| Verb|URI Pattern| Controller#Action |
|--|--|--|--|
|category|GET| /category(.:format)| category#index|
||POST|/category(.:format)|category#create|
|category|GET|/category/:id(.:format)|category#show|
||PATCH|/category/:id(.:format)|category#update|
||PUT|/category/:id(.:format)|category#update|
||DELETE|/category/:id(.:format)|category#destroy|

## Part4 - set the routes

Configure the routes in `recipes-api/config/routes.rb` !

>Use the information in the table above to refer each route to the correct controller.

## Part5 - test your RESTful API using POSTMAN

Make sure each endpoint *works*... Not just that the server doesn't break, but that it does exactly what you expect it to do!

>What information should be in your Postman request for a POST request? How about a PATCH or PUT?

## How to submit homework

### Setup

- Step 1. Fork the repository
- Step 2. Clone your fork

### Submitting work

- Step 1. Create a folder for the specific homework
- Step 2. Push to your fork
- Step 3. Submit a pull request
- Step 3.1. Add a title (First name, Last Name) and comment

In the comment section, you must add the following:

```text
* Comfortability [0 to 5]
* Completeness [0 to 5]
* What was a win?
* What was a challenge?
* Any other comments
```
