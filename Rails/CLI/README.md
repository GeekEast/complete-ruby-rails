  
## Console
- **Rails**
```sh
# in the project root
rails console
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
## Destroy
- `rails d model account`
- `rails d controller account`
- `rails d resource account`
- `rails d scaffold acount`
