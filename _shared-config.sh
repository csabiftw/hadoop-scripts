sudo -u hduser  mkdir /usr/local/hadoop/tmp

# core-site.xml
sudo -u hduser sh -c "./_awk-core-site.sh"

# yarn-site.xml
sudo -u hduser sed -i.bak 's=<configuration>=<configuration>\<property>\<name>yarn.resourcemanager.resource-tracker.address\</name>\<value>master:8025\</value>\</property>\<property>\<name>yarn.resourcemanager.scheduler.address\</name>\<value>master:8030\</value>\</property>\<property>\<name>yarn.resourcemanager.address\</name>\<value>master:8045\</value>\</property>=g' /usr/local/hadoop/etc/hadoop/yarn-site.xml 