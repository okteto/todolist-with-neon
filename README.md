# Oktetodo

A todo list application to demonstrate how you can integrate [Neon's branched databases](https://neon.tech) into your Okteto development environment

With Okteto and Neon, you can give your team access to one click environments preconfigured with branched databases.


## Prepare your environment
1. Sign up for [Neon](https://neon.tech)
1. Create a new project in your Neon account
1. Create a new database, and import the [init script](./db/init.sql) (you can use Neon's SQL editor for this)

Create the following variables in Okteto:
1. `NEON_API_KEY`: An [API key](https://neon.tech/docs/manage/api-keys) with read/write access to your Neon project
1. `NEON_PROJECT_ID`: The ID of the Neon Projec that you will integrate with Okteto.

## Deploy the environment

Run `okteto deploy` from the CLI, or  deploy the repo using Okteto's dashboard. Okteto will automatically build a docker image with all the necessary tooling, setup your database in Neon, and create the environment. 

After a few seconds, access the URL of your environment and start using the todo list app. Your data will be waiting for you.