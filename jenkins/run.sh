exec sudo groupmod -g $(ls -n /var/run/docker.sock | cut -b 16-18) docker &
wait
exec sg docker -c /usr/local/bin/jenkins.sh 