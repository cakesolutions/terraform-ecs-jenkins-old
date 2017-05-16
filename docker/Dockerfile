FROM jenkins:2.46.2
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

RUN /usr/local/bin/install-plugins.sh git:3.3.0 \
  slack:2.2 \
  amazon-ecs:1.11 \
  docker-build-publish:1.3.2 \
  amazon-ecr:1.4 \
  google-login:1.3
