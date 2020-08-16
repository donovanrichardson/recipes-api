# W08-D03

# Recipes API Part 1

## Part1 - create a new app
In this homework series, we are going to build fully-functional recipes API. We can create our rails app using the following command.

```rails new recipes-api --api -skip-active-storage```

## Part2 - create a model

Let's go ahead and create a new model, name this model as `Category`. We can use the following command to generate the model `rails g model Category`.

This model should be consist of the following `fields`.

```text
t.string :title
t.bigint :created_by
```

Once you're done adding the fields, you can create the migration file using the following command `rails d migration 'created_the_category_table` and finally create the table using `rails db:migrate`.

Your final models should look like this.

![Model categories](categories-erd.png)


## Part3 - adding a controller
Now that our model is all set up, let's generate the controller.

```
rails g controller Categories
```
File path ```app/controllers/categories_controller.rb```

Now go ahead and create all the rest controller methods here. The RESTful API must consist of the endpoints. 

|Prefix| Verb|URI Pattern| Controller#Action |
|--|--|--|--|
|recipes|GET| /recipes(.:format)| recipes#index|
||POST|/recipes(.:format)|recipes#create|
|recipe|GET|/recipes/:id(.:format)|recipes#show|
||PATCH|/recipes/:id(.:format)|recipes#update|
||PUT|/recipes/:id(.:format)|recipes#update|
||DELETE|/recipes/:id(.:format)|recipes#destroy|

## Part4 - Test your RESTful API using POSTMAN
