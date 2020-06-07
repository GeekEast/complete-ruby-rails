  
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
rails dbconsole # requirs db password
```

## Generate
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
create      app/assets/stylesheets/account.scss
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
create    test/models/foo_test.rb
create    test/fixtures/foos.yml
# route
route     resources :foos
# controller
create    app/controllers/foos_controller.rb
create    test/controllers/foos_controller_test.rb
create    app/views/foos/index.json.jbuilder
create    app/views/foos/show.json.jbuilder
create    app/views/foos/_foo.json.jbuilder
```

### Migrations
- `rails g migration create_media_join_table`
- [Migration Example](https://guides.rubyonrails.org/active_record_migrations.html#creating-a-table)
```ruby
# Only an example
class CreateMedaiJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
```
- `rails db:migrate`
  - **add_column**: won't delete existing records
  - **remove_column**: won't delete existing records
- `rails db:rollback`

> Just like `git commit`, each change of database table should be kept **small** and in **single** migration file

- After changes to database, you need to apply to **views** as well (No need to change model)
  - `views/_[name].json.jbuilder`
  - `vieiws/_form.html.erb`
  - `views/index.html.erb`
  - `views/show.html.erb`
## Destroy
- `rails d model account`
- `rails d controller account`
- `rails d resource account`
- `rails d scaffold acount`
