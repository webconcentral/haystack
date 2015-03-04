application_master = '104.236.37.76'

role :app, application_master
role :web, application_master
role :db,  application_master

set :rails_env, 'production'
set :host, 'haystackleads.com'
set :keep_releases, 3