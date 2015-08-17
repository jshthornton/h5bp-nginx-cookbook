default['nginxh5bp']['install_path'] = '/etc/nginx'
default['nginxh5bp']['conf'] = {
  user: {
    user: 'www',
    group: 'www'
  },

  worker_processes: 2,
  worker_rlimit_nofile: 8192,
  sendfile: 'on',

  expire_webfonts: false,

  access_control_allow_origin: '*'
}