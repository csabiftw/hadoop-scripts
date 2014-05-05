# hadoop-scripts

## make-single-node.sh 

Creates a single-node Hadoop 2.2.0 server. 

Requirements: Suitable for Ubuntu-based distributions because of the need for the APT utility (e.g., apt-get).

Testing: Tested and executed on an ubuntu-precise-12.04-amd64-server-20131114 AMI (ami-d9a98cb0).

(Command seqeuence adopted from http://codesfusion.blogspot.com/2013/10/setup-hadoop-2x-220-on-ubuntu.html)

## make-master.sh

After running make-single-node.sh, it configures this node to be the master, and sets up the connections to the slaves.

## make-slave.sh

After running make-single-node.sh, this script sets up a slave.
