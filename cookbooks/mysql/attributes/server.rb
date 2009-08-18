mysql Mash.new unless attribute?(:mysql)
mysql[:server] = Mash.new unless mysql.has_key?(:server)

mysql[:server][:root] = "/u/mysql" unless mysql[:server].has_key?(:root)
mysql[:server][:datadir] = "#{mysql[:server][:root]}/data" unless mysql[:server].has_key?(:datadir)
mysql[:server][:log_root] = "#{mysql[:server][:root]}/logs" unless mysql[:server].has_key?(:log_root)
mysql[:server][:mysqld_error_log] = "#{mysql[:server][:root]}/logs/mysql.err" unless mysql[:server].has_key?(:mysqld_error_log)
mysql[:server][:socket_path] = "/tmp/mysql.sock" unless mysql[:server].has_key?(:socket_path)
mysql[:server][:slow_query_log] = "#{mysql[:server][:root]}/logs/mysql_slow_queries.log" unless mysql[:server].has_key?(:slow_query_log)
mysql[:server][:error_log] = "#{mysql[:server][:root]}/logs/mysql.log.err" unless mysql[:server].has_key?(:error_log)
mysql[:server][:binlog_dir] = "#{mysql[:server][:root]}/binlogs/binlog" unless mysql[:server].has_key?(:binlog_dir)
mysql[:server][:innodb_log_dir] = "#{mysql[:server][:root]}/binlogs" unless mysql[:server].has_key?(:binlog_dir)
mysql[:server][:pidfile] = "/var/run/mysqld/mysqld.pid" unless mysql[:server].has_key?(:pidfile)
mysql[:server][:server_id] = "1" unless mysql[:server].has_key?(:server_id)
mysql[:server][:binlogs_enabled] = false unless mysql[:server].has_key?(:binlogs_enabled)
mysql[:server][:port] = "3306" unless mysql[:server].has_key?(:port)
mysql[:server][:innodb_file_per_table] = true unless mysql[:server].has_key?(:innodb_file_per_table)
mysql[:server][:innodb_buffer_pool_size] = "500M" unless mysql[:server].has_key?(:innodb_buffer_pool_size)