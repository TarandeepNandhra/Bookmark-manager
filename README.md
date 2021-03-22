# Bookmark-manager

## Specifications

- [ ] Show a list of bookmarks
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