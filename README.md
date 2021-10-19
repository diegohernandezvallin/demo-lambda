# demo-lambda
Simple project to show how to implement a AWS lambda in golang and deploy it with terraform.

## Building your function
Preparing a binary to deploy to AWS Lambda requires that it is compiled for Linux and placed into a .zip file.ß

## Linux and macOS
Run build script under scripts folder.
``` shell
sh scripts/build.sh 
```

## Deploying
First of all, be sure to have AWS CLI running and configured with your credentials. Secondly run the next command to initialize a terraform project under deploy folder.
``` terraform
terraform init
```
Then just run the command.
``` terraform
terraform apply
```
Be sure to destroy every resource to avoid any extra charge.
``` terraform
terraform destroy
```