if node[:instance_role] == 'app' 
  cron "task_pull_pr_seo" do 
    day '*/1' 
    user 'deploy' 
    command "/data/nwbstaging/current && rake production spree:extensions:power_reviews:load_data" 
  end 
end 

#
# Cookbook Name:: cron_pr
# Recipe:: default
#
