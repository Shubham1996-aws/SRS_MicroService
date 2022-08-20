pipeline {
agent{
labels 'nodename'}
tools{
terraform "terraformv2.0.1"
}
stages{
stage ('git checkout'){
steps{
git url: '' , branch: 'master'
}
}
}
stages {
stage ('Terraform_init'){
steps {
sh "terraform init"
}
}
}
stages {
stage ('Terraform_Apply/Destroy'){
steps {
sh "terraform ${action} --auto-approve"
}
}
}
}
