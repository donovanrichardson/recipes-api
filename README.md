# W08-D03

# Recipes API Part 1

## Part1 - create a model

Let's go ahead and create a new model, we'll name this model as `Category`. We can use the following command to generate the model `rails g model Category`

This model should be consist of the following `fields`.

```text
t.string :title
t.bigint :created_by
```

Once you're done adding the fields, you can create the migration file using the following command `rails d migration 'created_the_category_table` and finally create the table using `rails db:migrate` 

Your final models should looks like this.

![Model categories](categories-erd.png)


## Part2 - adding a controller
Now that our models are all setup, let's generate the controller.

```
rails g controller Categories
```
Now ahead and define the controller methods here.
File path ```app/controllers/categories_controller.rb```


The RESTful API must consist of the endpoints (CRUD).

|Prefix| Verb|URI Pattern| Controller#Action |
|--|--|--|--|
|recipes|GET| /recipes(.:format)| recipes#index|
||POST|/recipes(.:format)|recipes#create|
|recipe|GET|/recipes/:id(.:format)|recipes#show|
||PATCH|/recipes/:id(.:format)|recipes#update|
||PUT|/recipes/:id(.:format)|recipes#update|
||DELETE|/recipes/:id(.:format)|recipes#destroy|

## Part3 - Test your RESTful API using POSTMAN
