FROM centos
RUN yum install -y which
COPY Dockerfile /Dockerfile
ADD https://raw.githubusercontent.com/shimib/ciscocd/master/setup.yml /setup.yml
ADD 	http://www-us.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz  /maven.tar.gz
RUN gunzip -c maven.tar.gz | tar xvf -
