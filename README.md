# ansible-one-repo-for-starter
Use this repository for you to start understand key concepts of Ansible.


## Terraform for provisioning servers on AWS
1. Change profile name in [c1-versions.tf](https://github.com/harryzhou1987/ansible-one-repo-for-starter/blob/main/terraform/c1-versions.tf)
2. Configure the instance type, key pair and instance count based on your requirement in [ec2instance.auto.tfvars](https://github.com/harryzhou1987/ansible-one-repo-for-starter/blob/main/terraform/ec2instance.auto.tfvars)
3. Configure aws region in [terraform.tfvars](https://github.com/harryzhou1987/ansible-one-repo-for-starter/blob/main/terraform/terraform.tfvars)

```
// Deploy the architecture and get IP address for EC2 instances in the output
cd terraform
terraform init
terraform validate
terraform plan
terraform apply -auto-approve

// Destroy the architecture
terraform destroy -auto-approve
```

## Inventory
Inventory file is the place you configure the servers. Get the public IP from the terraform output and make sure you have the correct key file.

## Playbook
Playbook is the recipe including destination hosts and the automation processes. This example is to install a LAMP stack on and EC2 instance.
```
ansible-playbook [playbook.yaml] -i [inventory_file]
```

### Tasks
Tasks include the steps **(In order)** that Ansible is doing to the hosts. 

### Modules
The modules within tasks we are using in this playbook include:
- yum
- command
- service
- copy

There are tons of modules can be used.

### Roles
Use ansible role to define the group of actions which can be reused.
(This is just my own understanding)

### Other interesting technics
- Variables (with conditions)
- Loops
- Become: True/Yes --> sudo
- Jinja2 template


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
