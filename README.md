# stockinfo

### Overview

A simple app to display basic details about any stock symbol, including a graph of the most recent 30 days of trading. 

### Caveats

This exercise is not complete, and has the following deficiencies:

1. There is no search/query page. The page for loading the details of a stock must be done by manually updating the URL.
2. There is no graph. 
3. The stocks are loaded into memory when the application is started. No database was used.

### Prerequisites / Assumptions

1. Rails 4.2.0
2. Ember-CLI 0.1.15
3. IO.js (substitute for Node.js) 1.4.3

This application can be executed with the following commands: 

1. `bundle install` 
2. `bundle exec rails server`. 
