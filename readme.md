AWS RESOURCE TRACKER USING SHELL SCRIPTING
Here we are going to create a project using shell scripting on reporting to AWS resource usage. 
Step 1: In order to create this project the first important step is to depending on your need you use either instance to launch Ubuntu or if you have ubuntu already on your workstation, just use terminal 
Step 2: establish a connection to the instance if you are using AWS Virtual machine by creating your pem file when the instance is created. Connect from the terminal by using the command ssh -i .pem file location ubuntu@public ip address of the instance to establish ssh connection.
Step 3: Once the connection is established, you have to authorize with AWS. For that you to go back to you aws dashboard and getting to your profile in that -> go to security credentials -> go to access key, and create one. 
Step 4: After a key is created. Go back to your terminal where we will perform some commands to order to authenticate with AWS. Enter the command “ aws “ where it should show whether aws cli is installed on your workspace. If not installed just enter “ sudo apt install awscli” to install awscli. 
Step 5: After the awscli is installed enter sudo apt update to install the packages. After that enter “ aws configure” to authenticate, and then it asks for the access key, security key, location (for example us-east-1), and format (json) enter all those, and then you are authenticated. After that enter aws s3 ls to list any s3 buckets in your aws console.
Step 6: we are going to create a file to write on script. Here I have created a file name with command “vim aws-resource-tracker.sh”
Step 7: In this we going to list S3, EC2, LAMBDA, and IAM user

 
Since with the instances information we have a lot of information what we have to do is we will use a special command which is ‘jq’ command is command line JSON processing tool which is to used to parse the data. In this we want to specifically list InstanceId from the Instances.
For that we enter “aws ec2 describe-instances | jq ‘.Reservations [].Instances[].InstanceID’ “ 
Here “[]” is used because instances which is a list, if there is a single then don’t need to use that operator.
