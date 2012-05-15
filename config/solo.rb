#
# Chef Solo Config File
#
megalodon_root = "#{Dir.tmpdir}/megalodon"

log_level          :info
log_location       STDOUT
sandbox_path       "#{megalodon_root}/sandboxes"
file_cache_path    "#{megalodon_root}/cookbooks"
file_backup_path   "#{megalodon_root}/backup"
cache_options      ({ :path => "#{megalodon_root}/cache/checksums", :skip_expires => true })

# Load megalodon cookbooks first, then user cookbooks may override.
cookbook_path [
  File.expand_path(File.join(File.dirname(__FILE__), "..", "cookbooks")),
  "#{ENV['HOME']}/.megalodon/cookbooks"
]

# Load roles and data_bags from user .megalodon directory.
role_path "#{ENV['HOME']}/.megalodon/roles"
data_bag_path "#{ENV['HOME']}/.megalodon/data_bags"

Mixlib::Log::Formatter.show_time = false
