# A quest in the clouds

### How to get the port used by app

* Build docker image and run locally it shows on the console -> 3000

###  How to get the Secret word - TwelveFactore

* Created a docker file
* build docker image
* push to docker hub after tagging it
* created EC2 instance
* Run docker container inside EC2
* try accessing its webpage, Secret is present there -> TwelveFactor

### About Terraform files

* alb.tf - Contains load balancer related resources
* ecs.tf - contains ECS resources with Fragate configuration
* auto_scaling.tf - Contains autoscalling resources.
* security.tf - Contains security groups configuration
* roles.tf - contains the role resources.
* logs.tf - creates cloudwatch log resources
* network.tf - Creating all the network required for the resources for example, security groups,etc.
* provider.tf - declares AWS provider with region, secret file, etc. 
* variables.tf - declares all the variables.
* outputs.tf - declaares all the output variables.

### How to deploy the application

* git clone this repo
* teraform init
* terraform apply
* after resources are created in output section it gives you ALB's endpoint just use that in browser with port 3000

### Note (BUG): the app says 'You dont seem to be running in a Docker container', but application is running on ECS