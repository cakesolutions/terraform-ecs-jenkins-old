[
  {
    "name": "jenkins",
    "image": "675228244484.dkr.ecr.eu-west-2.amazonaws.com/cakesolutions/jenkins:latest",
    "cpu": 128,
    "memory": 1024,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 80
      },
      {
        "containerPort": 50000,
        "hostPort": 50000
      }
    ],
    "mountPoints": [
      {
        "sourceVolume": "jenkins-home",
        "containerPath": "/var/jenkins_home"
      }
    ]
  }
]
