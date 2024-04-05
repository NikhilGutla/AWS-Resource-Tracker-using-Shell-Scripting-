#!/bin/bash

#Listing EC2,S3,LAMBDA,IAM

set -x

#Listing EC2 instances

echo "print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#listing s3 buckets

echo "print list of s3 buckets"
aws s3 ls

#listing Lambda

echo "print list of lambda functions"
aws lambda list-functions

#listing IAM users

echo "print list of IAM users"
aws iam list-users



















