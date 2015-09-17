lock '3.4.0'

                  # your application name
set :application, 'capistrano-deploy'

                #your repository here
set :repo_url, 'git@github.com:lcfumes/capistrano-deploy.git'

                #the destiny folder to deploy your application
set :deploy_to, '/srv/destiny_folder'

set :keep_releases, 2 

namespace :deploy do

#  desc 'Restart application'
#  task :restart do
#    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
#    end
#  end

  after :updated, :build do
    on roles(:app), in: :groups, limit: 3, wait: 10 do
      within release_path do
	execute 'composer', 'install', '--no-dev', '--optimize-autoloader'
      end
    end
   end

end
