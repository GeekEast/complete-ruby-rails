## Cheatsheet
- [Model Cheatsheet](https://devhints.io/rails-models)
- [Gist Model Cheatsheet](https://gist.github.com/rstacruz/1569572/5dea40c28f0dfcd31dd2f6401f0456aa4eb5a0a6)

## One-to-One
### Migration
- `rails g migration AddSupplierToAccount supplier:references`
```ruby
class AddSupplierToAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :supplier, foreign_key: true
  end
end
```
### Model
```ruby
class Supplier < ApplicationRecord
  has_one :account
end
 
class Account < ApplicationRecord
  belongs_to :supplier
end
```

## One-to-Many
### Migration
- `rails g migration AddUserToArticles user:references` 
```ruby
class AddUserToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :user, foreign_key: true
  end
end
```
### Model
- Article
```ruby
class Article < ActiveRecord::Base
  belongs_to :user
end
```
- User
```ruby
class User < ActiveRecord::Base
  has_many :articles
end
```

## Mang-to-many
### Migration
```sh
# generate base table
rails g model Patient
rails g model Physician 
# method 1: generate intermediate table with models
rails g model Appointment patient:references physician:references
# method 2: only generate migrations, no models
rails g migration CreateAppointment patient:references physician:references
```
### Model
- Better
```ruby
class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end
 
class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end
 
class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
end
```