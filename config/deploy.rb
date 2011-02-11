set :user, "root"
set :project, "Blowseeds"
set :application, "blowseeds.com"
set :repository,  "git@blowseeds.sourcerepo.com:blowseeds/blowseeds.git"
set :applicationdir, "/var/www/"

set :scm, "git"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "blowseeds.com"                          # Your HTTP server, Apache/etc
role :app, "blowseeds.com"                          # This may be the same as your `Web` server
role :db,  "blowseeds.com", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end