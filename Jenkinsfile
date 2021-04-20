pipeline {
    agent any
    environment {
  PATH = "${PATH}:${getTerraformpath()}"
}
stages {
  stage('TerraformINIT') {
    steps {
      sh "terraform init"
    }
  }

  stage('TerraformPLAN') {
    steps {
    sh "terraform plan"
    }
  }
  stage('TerraformAPPLY') {
    steps {
      sh "terraform apply -auto-approve"
    }
  }
}
}

def getTerraformpath(){
def tfHome = tool name: 'Terraform-0.12', type: 'terraform'
return tfHome
}
