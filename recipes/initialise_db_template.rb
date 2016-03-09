execute :load_postgis_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/postgis.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end

execute :load_postgis_comments_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/postgis_comments.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end

execute :load_spatial_ref_sys_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/spatial_ref_sys.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end

execute :load_rtpostgis_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/rtpostgis.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end

execute :load_raster_comments_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/raster_comments.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end

execute :load_topology_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/topology.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end

execute :load_topology_comments_sql do
	user "postgres"
	command "psql -d #{node[:postgis][:template_name]} -f `pg_config --sharedir`/contrib/postgis-#{node[:postgis][:version]}/topology_comments.sql"
	only_if "psql -qAt --list | grep '^#{node[:postgis][:template_name]}\|'", :user => 'postgres'
	action :run
end
