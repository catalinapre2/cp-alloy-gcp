Bonus: Same with GCP

- cd to the gcp Project directory.
- Run terraform init
- Authorise (connect to gcloud to allow Terraform to execute the oprations): gcloud auth application-default login
- Run terraform plan
- Run terraform apply
- Start using your new environment 🙂
- (use update / destroy depending on what you want to do with the project)

Configuring the settings:
to find what zones you can create instances in: 
gcloud compute zones list |grep UP
- UP being zones that are are available (and maybe not drained)

the slightly fancier way to find the zones: 
gcloud compute zones list |grep UP| grep -o '[a-z\-]*[0-9]\-[a-z]'

