set :application, "biribablog_deprecated"

set :repository,  "."

role :web, "45.55.169.72"

set :deploy_via, :copy

set :copy_cache, true

set :copy_exclude, ["Gemfile", "Gemfile.lock", "config", "Capfile", "README.md", ".git", ".ruby*"]

set :user, "deploy"

set :use_sudo, false

set :deploy_to, "/www/#{application}"

set :keep_releases, 2

namespace :deploy do
  task :finalize_update do
  end
end

after "deploy:update", "deploy:cleanup"
