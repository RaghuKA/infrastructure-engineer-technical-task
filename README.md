# Cloud Infrastructure Engineer
## Take-home technical assessment

## Introduction
The purpose of this assessment is for **sisu-tech** to ascertain the technical suitability of candidates applying for a Cloud Infrastructure Engineer position.

Please note the following:

 - We do not expect this test to take more than 2 hours
 - We recommend to create a new account in Google Cloud Platform (GCP) for testing the results.

## Process

 1. Complete the tasks listed below
 2. Edit this `README.md` file to include brief answers to the questions about the assessment listed below
 3. Push your work to your new repository
 4. Send your recruitment contact a link to the new repository

If you have any questions about this process, please speak to your recruitment contact.

## Tasks

### 1. Docker
A basic TypeScript application has been created in the `application` folder. Create a Dockerfile to build this application, making sure that it runs on your local device.

### 2. CI/CD
 - :arrow_forward: Github Actions
 - :arrow_forward: Argo Workflows

Write a YAML-based or Kubernetes-based CI/CD pipeline to build, push and deploy this docker image to some Google Kubernetes Engine cluster.

Create Kubernetes resource definitions needed to deploy the application and include it in the `kubernetes` folder.

Use whatever mechanism/tools you think are appropriate/relevant to deploy the application.

NOTE: This pipeline does not have to be fully active. All we're looking for is the YAML file. Minor syntax errors will be overlooked.

### 3. Infrastructure as Code
 - :arrow_forward: Terraform **CDK in TypeScript** https://developer.hashicorp.com/terraform/cdktf

Create some Infrastructure as Code resources to deploy an Google Cloud Kubernetes Engine and an Cloud SQL database to some Google Cloud account.

The Google Cloud Kubernetes Engine must be able to connect to Google Cloud SQL, and the Kubernetes Cluster will need to be accessed as follows:
 - VPN from IPs `10.26.32.12` and `19.104.105.29`
 - HTTPS traffic from anywhere

Consider other general security best practices.

Other configuration can be decided by yourself, based on the instance being used for a low resource usage, low traffic web application.

## Questions

 1. How long did you spend on this assessment in total?\
 _ In total 4-5 hours.

 2. What was the most difficult task?\
 _ The 3rd task was challeging because the Google Cloud Platform is relatively new to me and I had to dig really deep into the topic. The Terraform **CDK in TypeScript** installation was not supported and generating installation errors. I have tried to resolve the errors in several alternative ways but the installation was not successful. So, I have tried to create the Infrastructure as Code resources using Terraform HCL. In this process, it was challeging to dig deep into the Google Cloud Platform resources and IAM permissions structure. So the complete infrastructure in Google Cloud couldn't be tested because of the above said reasons. But, I have understood the proess of creation of the resorces in Google Cloud.

 3. If you had an unlimited amount of time to complete this task, what would you have done differently?\
 _ If I had unlimited amount of time, I would implement both YAML-based and Kubernetes-based CI/CD pipelines to get an overview of which workflows would be better.
