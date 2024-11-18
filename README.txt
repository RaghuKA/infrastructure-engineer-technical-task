## Tasks

### 1. Docker

Description:
To finish this task, the Dockerfile with the necessary import Docker hub container image library, run and build npm commands was include in the 'application' folder.

How to run:
First the npm has to be installed in the 'application' folder. Then docker build command 'docker build -t <appname> .' has to be run in the 'application' folder. To run the build 'docker run -d -p <port to map>:3000 <appname>' command needs to be run. Then the appplication can be opened in the web browser with url localhost:port


### 2. CI/CD

Description:
I have created a GitHub Actions Workflow for the 'YAML-based CI/CD pipeline' to build, push to my Google Cloud Artifact Registry repository 'infrastructure-test' and deploy this docker image to the Google Kubernetes Engine cluster 'autopilot-cluster-1' created in my Google Cloud account. For this, I have created GCP_PROJECT_ID and GCP_APPLICATION_CREDENTIALS as secrets in GitHub repository to read the project ID and Google Cloud Service Account Secret .JSON key and run the workflow. And, created the 'resources.yaml' with the resource definitions for deploying to the Google Kubernetes Engine cluster.

How to run:
To run this GCP_PROJECT_ID and GCP_APPLICATION_CREDENTIALS must be created in GitHub repository secrets. The repository in the Artifact Registry must have Repository Administrator permissions granted. And, a service account in Google Cloud must be created with Kubernetes Engine developer permissions. And, the names of the Artifact Registry repository and Google Kubernetes Engine cluster must be edited in the 'docker-gke.yaml' as per your own names, if you have different names for those. If all the above mentioned inputs are configured correctly, the GitHub Actions work flow will run successfully to deploy the docker image to the Google Kubernetes Engine cluster. Then the application can be opened in the web browser with the endpoint IP-address created in the Services of the Google Kubernetes Engine cluster.


### 3. Infrastructure as Code

Description:
The Terraform **CDK in TypeScript** was not supported while installation while following the installation steps described in the Terraform documentations. There were many installation errors. The troubleshooting and alternate solutions were tried to resolve these errors. But still CDK in Typescript could not be installed. So, I have tried to create the infrastructure using Terraform HCL. The resource definitions are included for your reference. But, it was challenging to explore about the permissions needed in the Google Cloud to create the resources. The Terraform resources were defined but could not be completely tested because of the difficulties that I have faced in the Google Cloud Platform resources, IAM and other permissions. So, only creation of few resources was tested. The complete testing was not possible at present because of the uncertainities in the exact testing procedures and all the above stated problems encountered during this task. But, overall there is understanding of the resources that need to be created to finish this task.

How to run:
Change directory to the TERRAFORM directory in terminal. Include the 'Google Cloud Service Account Secret .JSON key' in the directory for the necessary credentials to create resources in the Google Cloud. Then using the following commands the code need to be run.
- terraform init
- terraform plan
- terraform apply