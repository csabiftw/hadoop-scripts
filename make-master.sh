./_add-hosts.sh

# setup passwordless auth
sudo sh -c "ssh-copy-id -i /home/hduser/.ssh/id_rsa.pub hduser@slave1"
sudo sh -c "ssh-copy-id -i /home/hduser/.ssh/id_rsa.pub hduser@slave2"
sudo sh -c "ssh-copy-id -i /home/hduser/.ssh/id_rsa.pub hduser@slave3"
sudo sh -c "ssh-copy-id -i /home/hduser/.ssh/id_rsa.pub hduser@slave4"
sudo sh -c "ssh-copy-id -i /home/hduser/.ssh/id_rsa.pub hduser@slave5"

# add slaves to hadoop (keep localhost too in this case)
sudo sh -c 'echo "slave1" >> /usr/local/hadoop/etc/hadoop/slaves'
sudo sh -c 'echo "slave2" >> /usr/local/hadoop/etc/hadoop/slaves'
sudo sh -c 'echo "slave3" >> /usr/local/hadoop/etc/hadoop/slaves'
sudo sh -c 'echo "slave4" >> /usr/local/hadoop/etc/hadoop/slaves'
sudo sh -c 'echo "slave5" >> /usr/local/hadoop/etc/hadoop/slaves'

./_shared-config.sh