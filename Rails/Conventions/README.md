
<p align="center"><img style="display: block; width: 600px; margin: 0 auto;" src=img/2020-06-06-16-48-39.png alt="no image found"></p>

### Model
- name: **Camel Case**, **singular**
  - `Article`
- attributes, methods: **snake case**
  - TODO
- file name: **snake case**, **singular**
  - `models/article.rb`

### Database Table
- table name: **snake case**, **plural**
  - `articles`
- column name: **snake case**, **singular**
  - `title`
  - `description`

### Controller
- class name: **Camel Case**, **plural** + `Controller` as **suffix**
  - `ArticlesController`
- file name: **snake case**, **plural** + `controller` as **suffix**
  - `articles_controller.rb`
- action name: **snake case**, match standard routes name:
  - `index`
  - `show`
  - `new`
  - `create`
  - `edit`
  - `update`
  - `delete`

### Migration
- **CamelCase**, **singular** or **plural** depends
  - `rails g migration CreateProducts`
## References
- [Rails Naming Convention](https://gist.github.com/iangreenleaf/b206d09c587e8fc6399e)
- [Rails Style Guide](https://github.com/JuanitoFatas/rails-style-guide/blob/master/README-zhCN.md)
- [Rails Best Practice](https://rails-bestpractices.com/)