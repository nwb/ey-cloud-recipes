unless File.exist?( '/usr/local/sbin/daemonize' )
  bash "install_something" do
    user "root"
    cwd "/tmp"
    code <<-EOH
    git clone git://github.com/bmc/daemonize.git
    cd daemonize
    ./configure
    make
    make install
    EOH
  end
end