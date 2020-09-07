  
## Console
- **Rails**
```sh
# in the project root
rails console

# get model attribute and types
User.first
User
```
- **Database**
```sh
# in the project root
rails db
rails dbconsole # requirs db password
```

## Generate
### Migration
#### Magic Name
- `rails g migration CreateProducts` will generate:
```ruby
class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
    # logic for creation
    end
  end
end
```
- `rails g migration AddUserToUploads user:references` will generate
  - **Notice**: without `user:references`, will just generate `change` without content
```ruby
class AddUserToUploads < ActiveRecord::Migration
  def change
    add_reference :uploads, :user, index: true
  end
end
```
#### Plain CamelCase
> Do not depends on Magic Name!
- `rails g migration CreateProduct`
#### Migrate and roll back
- `rails db:migrate`
  - **add_column**: won't delete existing records
  - **remove_column**: won't delete existing records
- `rails db:rollback`: rollback migrations
- `rails db:structure:dump`: generate `structure.sql`
- `rails db:schema:dumo`: generate `schema.rb`


### Model
- `rails g model account`
```sh
# orm: migration and models
create    db/migrate/20200606061914_create_accounts.rb
create    app/models/account.rb
# test
create      test/models/account_test.rb
create      test/fixtures/accounts.yml
```
### Controller
- `rails g controller account --no-assets --no-helper --force --skip-template-engine
`
```sh
# controller
create  app/controllers/account_controller.rb
# testing
create    test/controllers/account_controller_test.rb
```
### Model, Controller and Route
- `rails g scaffold Foo --api --no-assets --no-helper`
  - `--api`: no views and fixtures
  - `--no-stylesheets`: no scss
  - `--no-assets`: no assets including scss 
  - `--no-fixture`: no data config files for unit testing
  - `--no-helper`: no helper for views
  - `--no-jbuilder`: no json generator by jbuilder
```sh
# model
create    db/migrate/20200607030537_create_foos.rb
create    app/models/foo.rb
# route
route     resources :foos
# controller
create    app/controllers/foos_controller.rb
# serializer
create    app/views/foos/index.json.jbuilder
create    app/views/foos/show.json.jbuilder
create    app/views/foos/_foo.json.jbuilder
# tests
create    test/models/foo_test.rb
create    test/fixtures/foos.yml
create    test/controllers/foos_controller_test.rb
```


### Controller and View
- `rails g controller account`
```sh
# create controller
create  app/controllers/account_controller.rb
# create view
create    app/views/account
# create test
create    test/controllers/account_controller_test.rb
# create helper
create    app/helpers/account_helper.rb
# create style
create    app/assets/stylesheets/account.scss
```
### Model, View, Controller and Routes
- `rails g resource account`
```sh
# orm: migration and model
create    db/migrate/20200606061914_create_accounts.rb
create    app/models/account.rb
# model tests
create      test/models/account_test.rb
create      test/fixtures/accounts.yml

# controller
create    app/controllers/accounts_controller.rb
# views
create      app/views/accounts
# controller tests
create      test/controllers/accounts_controller_test.rb
# view helper, styles
create      app/helpers/accounts_helper.rb
create      app/assets/stylesheets/accounts.scss

# router
route    resources :accounts
```
### Model, Contollers, Routes and `Views`
- `rails g scaffold account`
```sh
# model
create    db/migrate/20200606061914_create_accounts.rb
create    app/models/account.rb
create    test/models/account_test.rb
create    test/fixtures/accounts.yml
# routes
route    resources :accounts

# controllers
force    app/controllers/accounts_controller.rb

# views with CRUD
create      app/views/accounts/index.html.erb
create      app/views/accounts/edit.html.erb
create      app/views/accounts/show.html.erb
create      app/views/accounts/new.html.erb
create      app/views/accounts/_form.html.erb
create      test/system/accounts_test.rb
create      app/helpers/accounts_helper.rb
create      app/views/accounts/index.json.jbuilder
create      app/views/accounts/show.json.jbuilder
create      app/views/accounts/_account.json.jbuilder
create      app/assets/stylesheets/accounts.scss
create      app/assets/stylesheets/scaffolds.scss
```

## Destroy
- `rails d model account`
- `rails d controller account`
- `rails d resource account`
- `rails d scaffold acount`



