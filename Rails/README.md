## Create Project
- generate an **API** project with **postgres** as database and `without` **testing** framework
```sh
rails new todolist -T --api --database=postgresql
```

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

## References
- [Rails Cheatsheet](https://gist.github.com/mdang/95b4f54cadf12e7e0415)



