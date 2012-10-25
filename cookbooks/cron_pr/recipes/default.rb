#
# Cookbook Name:: cron_pr
# Recipe:: default
#

if ['app_master', 'app'].include?(node[:instance_role])
#if node[:instance_role] == 'app_master' 
  cron "task_pull_pr_seo" do 
    hour '1'
    day '*/1' 
    user 'deploy' 
    command "cd /data/nwbsite/current && rake production spree:extensions:power_reviews:load_data" 
  end 
end 
