sudo su hduser 
mkdir /usr/local/hadoop/tmp
cd /usr/local/hadoop/etc/hadoop

# core-site.xml
awk 'BEGIN{RS="</configuration>"}/<configuration>/{gsub(/<configuration>.*/,"<configuration><property><name>fs.default.name</name><value>hdfs://master:9000</value></property><property><name>hadoop.tmp.dir</name><value>/usr/local/hadoop/tmp</value></property></configuration>")}1' core-site.xml >> core-site.xml

# yarn-site.xml
sed -i.bak 's=<configuration>=<configuration>\<property>\<name>yarn.resourcemanager.resource-tracker.address\</name>\<value>master:8025\</value>\</property>\<property>\<name>yarn.resourcemanager.scheduler.address\</name>\<value>master:8030\</value>\</property>\<property>\<name>yarn.resourcemanager.address\</name>\<value>master:8040\</value>\</property>=g' yarn-site.xml 
