require "./config/deploy_hosts"

# The primary server in each group is considered to be the first unless any
# hosts have the primary property set.
role :worker, HostSettings.worker_hosts

# Set deploy_to to the path where you would like kochiku-worker to be deployed
# to on the server.
set :deploy_to, '/home/ops/kochiku-worker'

set :branch, 'iora-deploy'
set :rvm_ruby_version, '2.2.4'

# after  "deploy:publishing", "deploy:restart"

