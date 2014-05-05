# run on master as hduser

ssh master "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"
ssh slave1 "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"
ssh slave2 "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"
ssh slave3 "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"
ssh slave4 "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"
ssh slave5 "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"
ssh slave6 "rm -R /usr/local/hadoop/tmp/* ; rm -R ~/mydata/hdfs;mkdir ~/mydata/hdfs;mkdir ~/mydata/hdfs/namenode;mkdir ~/mydata/hdfs/datanode;ls -la mydata/hdfs/;"

hadoop namenode -format