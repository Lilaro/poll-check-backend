# Poll Check
A React.js and Ruby on Rails web application for communication about NYC polling sites, election day ride shares and voting problems  
Built by [Lisa LaRochelle](https://github.com/Lilaro)


## Technologies and Frameworks Used
### Backend
[Ruby on Rails](https://rubyonrails.org/) - server framework  
[PostgreSQL](https://www.postgresql.org/) - database  
[JWT](https://jwt.io/) and [bcrypt](https://rubygems.org/gems/bcrypt/versions/3.1.12) - authorization, authentication and encryption  
[Fast JSON Serializer](https://github.com/Netflix/fast_jsonapi)  
[Rest-Client](https://github.com/rest-client/rest-client) - HTTP request client  
[NYC Open Data](https://data.cityofnewyork.us/City-Government/Voting-Poll-Sites/mifw-tguq) - NYC polling site api  

### Frontend
[React.js](https://reactjs.org/docs/getting-started.html) - frontend JavaScript library  
[React Router DOM](https://www.npmjs.com/package/react-router-dom) - declarative routing library  
[Semantic UI](https://react.semantic-ui.com/) - UI component framework  
[Mapbox GL](https://docs.mapbox.com/mapbox-gl-js/api/) - map api  

## Installation

* Clone this repo to your local machine: `https://github.com/Lilaro/poll-check-backend.git`  
* cd to the backend directory  
* run `bundle install`  
* Create a JWT Secret Key - create a file `.env` in the root directory and include `JWT_SECRET_KEY='your_secret_key'`  
* Ensure you are running PostgreSQL  
* Run rails `db:create`  
* Run rails `db:migrate`  
* Run rails `db:seed`  
* Run `rails s` to run the server on `http://localhost:3000`  
* Install and run the Poll Check frontend: [Poll Check Frontend Repo](https://github.com/Lilaro/poll-check-frontend)

