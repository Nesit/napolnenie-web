require 'bundler/capistrano'
#require 'capistrano-helpers/migrations'
#require 'capistrano-helpers/shared'
require 'capistrano-helpers/privates'

set :stages, %w(production staging)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

set :application, "napolnenie" #write app name there

set :scm, :git
set :repository,  "git@github.com:Nesit/napolnenie-web.git" #place your repo there

set :deploy_via, :remote_cache

set :user, "rvm_user"
set :use_sudo, false

set :rvm_type, :system 
set :rvm_install_with_sudo, true
set :rvm_autolibs_flag, "readonly"

set :base_directory, '/var/www/apps'

after 'deploy:restart', 'unicorn:restart'  # app preloaded

after 'deploy:restart', 'nginx:update_site_config'
after 'nginx:update_site_config', 'nginx:reload'

after 'deploy:restart', 'deploy:cleanup' #remove old releases

require 'rvm/capistrano'
require 'capistrano-unicorn'

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

Dir.glob('config/deploy/shared/*.rb').each{ |file| load file }

set :privates, %w{
  config/database.yml
}
