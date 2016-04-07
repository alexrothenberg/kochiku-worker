require "./config/deploy_hosts"

HostSettings.worker_hosts.each do |worker|
  server 'kochiku-worker.icisapp.com', user: 'ops', roles: %w{worker}
end

# Set deploy_to to the path where you would like kochiku-worker to be deployed
# to on the server.
set :deploy_to, '/home/ops/kochiku-worker'

set :repo_url, "https://github.com/alexrothenberg/kochiku-worker.git"
set :branch, 'iora-deploy'
set :rvm_ruby_version, File.read(File.expand_path("#{__dir__}/../../.ruby-version")).strip
