# docker-awscli-latest_master

This Docker image consists of the latest aws-cli version built from GitHub master.

We needed this, as Amazon released the new [Fine-Graned IAM Roles for Service Accounts](https://aws.amazon.com/blogs/opensource/introducing-fine-grained-iam-roles-service-accounts/) for EKS, which requires a very recent version of the aws-cli on the pod. We used this image to test the different permissions in the perspective of a pod.
