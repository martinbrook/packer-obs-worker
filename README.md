# packer-obs-worker
create obs-worker with packer for aws

##Install
Clone this repo and create a file to hold your AWS credentials

eg variables.json
~~~~
{
  "aws_access_key": "your key",
  "aws_secret_key": "your secret"
}
~~~~

##Create Ami

`packer build -var-file=variables.json obs-worker.json`

##Launch Instance

`/etc/sysconfig/obs-server

`OBS_SRC_SERVER="ec2-54-171-154-103.eu-west-1.compute.amazonaws.com:5352"

`OBS_REPO_SERVERS="ec2-54-171-154-103.eu-west-1.compute.amazonaws.com:5252"

`systemctl enable obsworker

`systemctl start obsworker

##Tested

Showed up in obs-server UI

##Known Issues and TODO

Connect up server IP on launch with terraform

