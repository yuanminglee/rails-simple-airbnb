# Simple Airbnb — User Stories

1. **Set up Frontend**
```
# In the terminal
yarn add bootstrap
```

```
rm app/assets/stylesheets/application.css
touch app/assets/stylesheets/application.scss
stt
```

```
/* application.scss */
@import "bootstrap/scss/bootstrap"; /* picks it up in node_modules! */
```

```
<!-- application.html.erb -->
<head>
  <!-- ... -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
```

```
gem 'simple_form'
bundle install
rails generate simple_form:install --bootstrap
git add .
git commit -m "Rails new with frontend and form gems"
```

2. **Create Flat model (scaffold)**
```
rails g scaffold
rails db:migrate
```

| Column           | Type    |
| ---------------- |-------- |
| name             | string  |
| address          | string  |
| description      | text    |
| price_per_night  | integer |
| number_of_guests | integer |

3. **Seed data**
```
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
```

4. **Implement user stories**

* [ ] As a user, I can see all the available flats on our website
* [ ] As a user, I can post a flat to the website, specifying its name and address
* [ ] As a user, I can see detailed information of a given flat
* [ ] As a user, I can edit the details of a flat if I made a mistake
* [ ] As a user, I can delete a flat from the website, in case I don’t want to rent it anymore
