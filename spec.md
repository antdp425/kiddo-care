# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
   - Sinatra gem included
   - Made use of Sinatra routes / views / templates / redirect / helpers / sessions
- [x] Use ActiveRecord for storing information in a database
   - AR gem included
   - User / Child / Employee models store info about each
- [x] Include more than one model class (e.g. User, Post, Category)
   - User / Child / Employee models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
   - User has_many Children
   - User has_many Employees
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
   - Child belongs_to User
   - Employee belongs_to User
- [x] Include user accounts with unique login attribute (username or email)
   - Username must be unique
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [x] Ensure that users can't modify content created by other users
- [x] Include user input validations
   - Made use of AR validations 
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
