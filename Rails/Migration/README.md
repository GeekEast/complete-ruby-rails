> Just like `git commit`, each change of database table should be kept **small** and in **single** migration file
## change
- method you can use within `change` method
```
add_column
remove_column (must supply a type)

add_foreign_key: FK
remove_foreign_key (must supply a second table)

add_index: sql index usually for FK
remove_index

add_reference: create column, add index and set as FK
remove_reference

create_join_table
drop_join_table

enable_extension
disable_extension

create_table
drop_table (must supply a block)

add_timestamps
remove_timestamps

change_column_default (must supply a :from and :to option)
change_column_null
rename_column
rename_index
rename_table
```

## up and down
- it's a customized version of `change` method
- for most cases, `change` method is **enough** for migrations
- up define method to run during `rails db:migrate`
- down define method to run during `rails db:rollback`