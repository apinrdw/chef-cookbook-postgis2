package node[:postgis][:package] do
  action :install
  options "--force-yes" # due the workaround to add new repositories, this option is needed to installed the new packages
end

package node[:postgis][:package_scripts] do
  action :install
end
