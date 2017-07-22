# _Animal Shelter API_

#### _An API to give CRUD for animal listings, 07.21.2017_

#### By _**E. Baharie**_

## Description

_The api is supposed to give you the list of all animals(original seeds are faker gem data), the ability to add, delete, and update the list as well._

## Setup/Installation Requirements

* _This api was built with Ruby on Rails and PostreSQL_
* _Use CLI to clone from github: https://github.com/elan0baharie/animal-shelter-api _
* _Use the CLI to cd into /animal-shelter-api_
* _Run bundle install_
* _Run rails db:create db:migrate db:seed_
* _Run rails s_
* _Use the browser to change into localhost:3000_

## Endpoints

* _get request for localhost:3000/api/v1/animals returns the list of all animals_
* _get request for localhost:3000/api/v1/animals/:id returns the :id of choice _
* _post localhost:3000/api/v1/animals?name=Animals+Name+Here&age=1001&adopted=false will post an Animal with name "Animals Name Here" age "1001" and adoption status set to "false"_
* _patch localhost:3000/api/v1/animals/:id?name=Change+To+Animals+Name+Here will change the name property_
* _delete localhost:3000/api/v1/animals/:id will delete the listing of choice_
* _random localhost:3000/api/v1/random will return a random listing_
* search localhost:3000/api/v1/animals/search?name=Enter+Name+You+Are+Searching for and it will return the listing matching that name_

## Known Bugs

_ _

## Support and contact details

_email: 0elan1@gmail.com github: https://github.com/elan0baharie/animal-shelter-api
_

## Technologies Used

_Ruby v 2.3, PostgreSQL, Rails_

### License

*MIT License*

Copyright (c) 2016 **_E. Baharie_**
