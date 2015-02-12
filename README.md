# Pollr

## Getting Started
## Linux
1. Clone the repository using git: `git clone https://github.com/Aaronneyer/pollr`
2. Switch to pollr directory: `cd pollr`
3. Install postgres: `sudo apt-get install postgresql libpq-dev`
4. Create your default postgres user: (Replace $USER with your username)  
`sudo -u postgres psql -c "create role $USER with createdb login password '$USER'"`
5. Bundle gems: `bundle`
6. Create and migrate database: `bundle exec rake db:create db:migrate`
7. Start your server: `bundle exec rails server`

## Mac
1. ""
2. ""
3. Download and install homebrew and run 'brew install postgresql'
4. Download and install rvm, run 'rvm install 2.1.5'
5. Download postgres app and run postgres server. Click run psql and paste "create role $USER with createdb login password $USER
6. Bundle gems: 'bundle'
7. Create and migrate database: 'bundle exec rake db:create db:migrate'
8. Start your server: 'bundle exec rails server'

