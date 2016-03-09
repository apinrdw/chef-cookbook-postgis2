include_attribute "postgresql"

default[:postgis][:template][:name] = "template_postgis"
default[:postgis][:template][:locale] = "en_US.utf8"

# Set the version number for the current version of PostgreSQL
default[:postgis][:postgres_version] = node["postgresql"]["version"]
default[:postgis][:version] = "2.1"
default[:postgis][:package] = "postgresql-#{node[:postgis][:postgres_version]}-postgis-#{node[:postgis][:version]}"

if node[:postgis][:version] == "2.1"
  default[:postgis][:package_scripts] = "postgresql-#{node[:postgis][:postgres_version]}-postgis-#{node[:postgis][:version]}-scripts"
else
  default[:postgis][:package_scripts] = "postgresql-#{node[:postgis][:postgres_version]}-postgis-scripts"
end