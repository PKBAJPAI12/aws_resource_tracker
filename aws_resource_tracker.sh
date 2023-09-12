#!/bin/bash

##########################
#Author: Prateek 
#Date: 13th Aug
#
#Version: v1
#
#This script will report the AWS resource usage
#########################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

# list EC2 Instances
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda function"
aws lambda list-functions >> resourceTracker:q!

# list IAM users
echo "print list of iam users"
aws iam list-users
