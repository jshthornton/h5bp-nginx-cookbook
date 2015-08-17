
dirs = ['h5bp', 'h5bp/directive-only', 'h5bp/location']

dirs.each do |dir|
  directory "/etc/nginx/#{dir}" do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end
end

files = [
  'mime.types',
  'server.conf',
  'h5bp/basic.conf',
  'h5bp/directive-only/cache-file-descriptors.conf',
  'h5bp/directive-only/cross-domain-insecure.conf',
  'h5bp/directive-only/extra-security.conf',
  'h5bp/directive-only/no-transform.conf',
  'h5bp/directive-only/spdy.conf',
  'h5bp/directive-only/ssl.conf',
  'h5bp/directive-only/ssl-stapling.conf',
  'h5bp/directive-only/x-ua-compatible.conf',
  'h5bp/location/cache-busting.conf',
  'h5bp/location/cross-domain-fonts.conf',
  'h5bp/location/expires.conf',
  'h5bp/location/protect-system-files.conf'
]

file.each do |file|
  template "/etc/nginx/#{file}" do
    source "#{file}.erb"
    owner 'root'
    group 'root'
    mode '0755'
  end
end