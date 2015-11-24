# No default site
nginxsite_create 'no-default' do
  template "no-default.erb"
  cookbook 'nginxh5bp'
  variables {}
  enable true
end

nginxsite_disable '000-default' do
end
