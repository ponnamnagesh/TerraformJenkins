pipeline {
    agent any
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
