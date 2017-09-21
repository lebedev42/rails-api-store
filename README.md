# Rails Store API

Simple API service for [Ember Store](https://github.com/lebedev42/ember-store).

* Ruby version - ruby 2.4.0p0
* Rails version - Rails 5.1.4

This app uses 'sqlite3' for development and 'postgresql' for production.

## API methods

### Products 

* GET '/products' - get all Products
* GET '/products/:id' - get Product by ID
* POST '/products' - create new Products (use [this test json](https://gist.github.com/lebedev42/a24a88b735babbc8893ac7652691f0eb) by Postman (for example))

### Orders

* GET '/orders' - get Orders list (with embeded Products)
* POST '/orders' - create new Order

## Running / Development

* `rake db:migrate`
* `rails s`
* API will be available on [http://0.0.0.0:3000](http://0.0.0.0:3000).



