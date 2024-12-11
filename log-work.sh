log_file="$HOME/work_log.txt"
touch $log_file
timestamp=$(date +%F)
echo "$timestamp $@" >> "$log_file"
