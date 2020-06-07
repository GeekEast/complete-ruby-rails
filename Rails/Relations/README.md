## Cheatsheet
- [Model Cheatsheet](https://devhints.io/rails-models)
- [Gist Model Cheatsheet](https://gist.github.com/rstacruz/1569572/5dea40c28f0dfcd31dd2f6401f0456aa4eb5a0a6)


## One-to-Many
### Migration
- CLI: `rails g migration AddUserToArticles user:references`
```ruby
class AddUserToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :user, foreign_key: true
  end
end
```
- Manual
```ruby
class AddUsersToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :integer
    add_index  :articles, :user_id
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
### Model
- ok
```ruby
class Physician < ActiveRecord::Base
  has_and_belongs_to_many :patients
end

class Patient < ActiveRecord::Base
  has_and_belongs_to_many :physicians
end
```
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