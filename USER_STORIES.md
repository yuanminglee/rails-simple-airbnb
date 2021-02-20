# Simple Airbnb — User Stories

1. **Set up Frontend**  
https://github.com/lewagon/rails-stylesheets/blob/master/README.md

```
<!-- application.html.erb -->
<head>
  <!-- ... -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
```

```
git add .
git commit -m "Rails new with frontend and form gems"
```

2. **Create Flat model**
```
rails g model Flat ... ...
rails db:migrate
```

| Column           | Type    |
| ---------------- |-------- |
| name             | string  |
| address          | string  |
| description      | text    |
| price_per_night  | integer |
| number_of_guests | integer |

3. **Create FlatsController**
```
rails g controller flats
```

4. **Create 7 CRUD routes**
```
/* routes.rb */
resources :flats
```

5. **Seed data**
```
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
```

6. **Implement user stories**

* [ ] As a user, I can see all the available flats on our website
* [ ] As a user, I can post a flat to the website, specifying its name and address
* [ ] As a user, I can see detailed information of a given flat
* [ ] As a user, I can edit the details of a flat if I made a mistake
* [ ] As a user, I can delete a flat from the website, in case I don’t want to rent it anymore
