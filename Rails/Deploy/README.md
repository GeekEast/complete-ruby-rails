## Deploy
### DB Migration in ElasticBeanstalk
```yaml
# .ebextensions/migration.confg
option_settings:
container_commands:
    database_migration:
        leader_only: true # only happened in one instance
        command: "db migrate"
```
- [Where should migrations be run on elasticbeanstalk deployment process?](https://serverfault.com/questions/773059/where-should-migrations-be-run-on-elasticbeanstalk-deployment-process)
### Other Options
- Github
- Heroku