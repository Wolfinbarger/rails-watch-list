
# 📚 Watchlist

Watchlist is an web application that allows for creation of movie lists with the movie information taken from TMDB.

<details>
<summary>Table of Contents</summary>

- [📚 OniGiri](#-watchlist)
  - [Getting Started](#getting-started)
    - [Setup](#setup)
    - [ENV Variables](#env-variables)
    - [DB Setup](#db-setup)
    - [Run a server](#run-a-server)
  - [Built With](#built-with)
  - [Acknowledgements](#acknowledgements)
  - [License](#license)
</details>

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
API_KEY=your_own_tmdb_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```
## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [Bootstrap](https://getbootstrap.com/) — Styling


## License
