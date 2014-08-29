# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/deploy/apps/ysa-acivity/current"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/deploy/apps/ysa-acivity/shared/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/deploy/apps/ysa-acivity/current/log/unicorn.log"
stdout_path "/home/deploy/apps/ysa-acivity/current/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.ysa-activity.sock"
listen "/tmp/unicorn.ysa-activity.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30