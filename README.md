# Bookstore API

## Summary
This is a Rails API that serves a collection of books whose title begins with the letter 'A'.

For this project we used the following Gems:
* faker
* jbuilder
* rack-cors
* rubocop-performance
* will_paginate

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
This project runs on Ruby, and Rails
After installation, run ruby -v to make sure Ruby installed correctly. Example:

```
$ ruby -v
ruby 2.6.2p47 (2019-03-13 revision 67232) [x86_64-linux]
```
Also, make sure that Rails is installed by running rails -v. Example:

```
$ rails -v
Rails 5.2.3
```

### Installing
Run `bundler -v` and make sure your bundler version is 2.0.2 or greater, otherwise update bundler.  
Run `bundle install` to install all project dependencies.

### Configuring database
In order to set up the database run the following command:
```
rails db:create db:migrate db:seed
```

### Serve Project
Run the server with the following command:
```
rails s
```
Now you can open your browser and navigate to:
```
localhost:3000/api/v1/books.json
```

### API data format
The API will return an array of JSON objects as a result.
Since we are using `will_paginate` gem, the result will be divided into pages.
You will only get 10 records per page.
You can optionally provide the page parameter so you can get the records of that specific page. Example:
```
localhost:3000/api/v1/books.json?page=2
```
Every collection of records holds the total number of pages as the last item of the array.  
<pre>
[ ... "category":"Biography","chapter":8}, <b style="color: green;">20</b>]
</pre>

## Future features
* Authentication

## Contributors:
* [Jeton Thaçi](https://github.com/jeton-th)
* [Valentino Valenti](https://github.com/1ba1)

## License
This project is licensed under the MIT License.
