# base-repository-template

Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

### Sample Profile
- should be stored in .dbt/profiles.yml
ncino_hackathon:
  outputs:
    dev:
      catalog: datause1_innovation
      host: ncino-us-east-dev-workspace.cloud.databricks.com
      http_path: **{get off cluster}**
      schema: dbt
      threads: 1
      token: **{generate token in Settings/Developer}**
      type: databricks
  target: dev