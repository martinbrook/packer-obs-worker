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

`OBS_SRC_SERVER="obs-server-ip:5352"

`OBS_REPO_SERVERS="obs-server-ip:5252"

`systemctl enable obsworker

`systemctl start obsworker

##Tested

Showed up in obs-server UI

##Known Issues and TODO

Connect up server IP on launch with terraform

