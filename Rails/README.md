## Create Project
- generate an **API** project with **postgres** as database and `without` **testing** framework
```sh
rails new todolist -T --api --database=postgresql
```
## Structure
- Model: validation, relationships
- Controller: `index`, `show`, `new`, `create`, `edit`, `update`, `delete`
- View: HTML, CSS
- Route: url -> controller
## Shortcut
- Insert `<% %>`: `Shift + Command + .`

## Git
- **Throw current changes**: `git checkout -f`


## Deploy
- Github
- Heroku


## Concepts
### [Partials](https://riptutorial.com/ruby-on-rails/example/2875/partials)
- **purpose**: code reuse of erb
- start with `_`: `_form.html.erb`
```erb
<!-- render _form.html.erb -->
<%= render 'form', article: @article %>
```
### [Flash](https://www.rubyguides.com/2019/11/rails-flash-messages/)
- **purpose**: display message for user to know about process
  - notice: something successful
  - alert: something wrong
- **Important**: will only be displayed **once**
- **prerequisite**: config `views/layouts/application.html.erb`
```ruby
<% flash.each do |type, msg| %>
  <div class="alert alert-info">
    <%= msg %>
  </div>
<% end %>
```
### [JBuilder](https://github.com/rails/jbuilder)
- purpose: used to generate json objects
- disadvantage: really slow
- alternative: [fast json API](https://github.com/fast-jsonapi/fast_jsonapi)


### [Fixture](https://stackoverflow.com/questions/18304788/rails-fixtures-what-do-these-mean#answer-18306222)
- Fixtures are data that you can feed into your unit testing. 
  
### [Helper](https://stackoverflow.com/questions/27793693/ruby-on-rails-helpers#answer-27793808)
- Only used for views
- Extract some logic or data from views

## References
- [Rails Cheatsheet](https://gist.github.com/mdang/95b4f54cadf12e7e0415)
- [DevHints Cheatsheet](https://devhints.io/)
- [Rails Style Guide](https://github.com/JuanitoFatas/rails-style-guide/blob/master/README-zhCN.md)
- [Awesome Ruby](https://github.com/markets/awesome-ruby#code-highlighting)



