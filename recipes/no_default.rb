# No default site
template '/etc/nginx/sites-available/no-default' do
  source 'no-default.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

file "/etc/nginx/sites-enabled/default" do
  action :delete
  only_if do
    File.exists?("/etc/nginx/sites-enabled/default")
  end
end
