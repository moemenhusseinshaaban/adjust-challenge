# AdjustChallenge

- Welcome to your simple web application! consists of one search page for public repositories in github.

- This app is using rails 5.2.2 and mainly count on [octokit gem](https://github.com/octokit/octokit.rb) that wraps [GitHub API](https://developer.github.com/)

- This app is using access token to connect to apis in order to increase the limitation of github requests

## Prerequisites

- Ruby Version 2.3.1

## Usage

- Clone the repository then go to the application path

- Execute the below command for installing application gems:

```
    $ bundle install
```

- Create your own [access token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line)

- Follow the instruction in [example.env](example.env) and assign the access token to the environmental variable GITHUB_ACCESS_TOKEN_DEVELOPMENT

- Run server using the below command:

```
    $ rails s
```

- Go to link http://localhost:3000

## Note

- You have to assign an access token to the environmental variable GITHUB_ACCESS_TOKEN_PRODUCTION for production environment
