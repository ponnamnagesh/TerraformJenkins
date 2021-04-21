pipeline {
    agent any
    environment {
  PATH = "${PATH}:${getTerraformpath()}"
}
stages {
  stage('s3 - create bucket'){
  steps{
  script{
  creates3Bucket('javhome-tf-121234567')
        }
      }
    }
  stage('TerraformINIT and apply - dev') {
    steps{
      sh returnStatus: true, script: 'terraform workspace new dev'
      sh "terraform init"
      sh "terraform apply -var-file=dev.tfvars -auto-approve"
    }
  }
  stage('TerraformINIT and apply - prod') {
    steps{
      sh returnStatus: true, script: 'terraform workspace new prod'
      sh "terraform init"
      sh "terraform apply -var-file=prod.tfvars -auto-approve"
    }
  }
}
}

def getTerraformpath(){
def tfHome = tool name: 'Terraform-0.12', type: 'terraform'
return tfHome

def creates3Bucket(bucketName){
sh returnStatus: true, script: 'aws s3 mb ${bucketName} --region=us-east-1'
}
