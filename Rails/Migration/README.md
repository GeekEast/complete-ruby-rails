## change
- method you can use within `change` method
```
add_column
add_reference
add_index
add_foreign_key
add_timestamps
change_column_default (must supply a :from and :to option)
change_column_null
create_join_table
create_table
disable_extension
drop_join_table
drop_table (must supply a block)
enable_extension
remove_column (must supply a type)
remove_foreign_key (must supply a second table)
remove_index
remove_reference
remove_timestamps
rename_column
rename_index
rename_table
```

## up and down
- it's a customized version of `change` method
- for most cases, `change` method is **enough** for migrations
- up define method to run during `rails db:migrate`
- down define method to run during `rails db:rollback`