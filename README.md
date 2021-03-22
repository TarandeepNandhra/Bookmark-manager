# Bookmark-manager

## To use: 

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

## Specifications

- [x] Show a list of bookmarks
- [ ] Add new bookmarks
- [ ] Delete bookmarks
- [ ] Update bookmarks
- [ ] Comment on bookmarks
- [ ] Tag bookmarks into categories
- [ ] Filter bookmarks by tag
- [ ] Users are restricted to manage only their own bookmarks

## User Stories

#### Show a list of bookmarks

As a user, 
I want to remember my favourite websites
I want to see a list of bookmarked websites

> database - store website URLs
> display - display method (puts each line of the database)
> store website method (step 2?)

DATABASE   >>>>>>>>>>> DISPLAY
*website 1*            Formatted Website 1 URL String & Link Name 
*website 2*            Formatted Website 2 URL String & Link Name 
*website 3*            Formatted Website 3 URL String & Link Name

#### Add new bookmarks
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager

## Challenge Tracker

#### 1. Creating User Stories
- [x] Write a user story for showing a list of bookmarks
- [x] Draw a rough domain model for the above
- [x] Put the user story and a snap of your domain model in your project README

#### 2. Setting up a Web Project
- [x] Set up Sinatra with RSpec and Capybara.
- [x] Set up a 'Hello, world' Sinatra application.
- [x] Test drive a simple index page for your bookmark manager.

#### 3. Viewing Bookmarks
- [x] Write a failing feature test for viewing bookmarks at the `/bookmarks` route.
- [x] Pass the feature test in the simplest way possible.
- [x] Refactor the code to use the View and Controller.
- [x] Test drive a refactor of the code to use a Model, that returns the list of bookmarks.

> Feature Test
> Index page route to /Bookmarks
> Bookmarks page we can just have a list of urls
> Refactor to use a model - which will involve a unit test

#### 4. Setting up a database 
- [x]] Install the `postgresql` command-line package via Homebrew (use the command `brew`).
- [x] Start postgres and set it to run automatically when your computer starts. (See the instructions in the output that brew shows when it's installing postgres.)
- [x] Check your installation by running `psql` in the terminal. Use the resources below to understand any errors that you see.
- [x] Use the `CREATE DATABASE` command in `psql` to set up a PostgreSQL database with the same name as your computer username, e.g. `timmy507`. PostgreSQL will connect to this database on startup.

#### 5. Create Your First Table
- [x] Create a new PostgreSQL database for Bookmark Manager, called `bookmark_manager`.
- [x] Use `psql` to connect to this new database.
- [x] Use `psql` to create a table called `bookmarks` in the `bookmark_manager` database, with two columns: `id`, a `SERIAL PRIMARY KEY`, and `url`, a `VARCHAR` with a maximum length of `60`.
- [x] Record the database setup instructions. 
        - in psql
        - CREATE DATABASE bookmark_manager;
        - \c bookmark_manager;
        - CREATE TABLE bookmarks_1(
          id SERIAL PRIMARY KEY
          url VARCHAR(60)
        );
      Created a file 01_create_bookmarks_table.sql

#### 6. Manipulating Table Data
- [x] List any existing rows in the bookmarks table.
      - SELECT * from bookmarks_1;
- [x] Create four link entries in the `bookmarks` table, with the following URLs: `http://www.makersacademy.com`, `http://askjeeves.com`, `http://twitter.com`, and `http://www.google.com`, using an `INSERT` statement.
- [x] List the four entries using a `SELECT` statement.
- [x] Delete the link with a URL of `http://twitter.com` using a `DELETE` statement.
- [x] Update the `http://askjeeves.com` link to `http://www.destroyallsoftware.com` using an `UPDATE` statement.

#### 7. Interacting with PostgreSQL from Ruby
- [x] Install the `pg` gem to your project.
- [x] Test drive an update to the `.all` method of your `Bookmark` model, to do the following:
  - [x] Use `PG` to connect to the PostgreSQL `bookmark_manager` database.
  - [x] Retrieve all bookmark records from the `bookmarks` table.
  - [x] Extract the URLs from the database response.
- [x] Make sure you still pass the first feature, using this new response.
- [x] Try adding and removing bookmarks via `psql` and check the `/bookmarks` page to see the results. How does this affect the tests?
  - changed spec test to include rather than expect to allow for a longer string. 
