FROM openshift3/jenkins-slave-base-rhel7:latest
USER root

COPY mongodb-org-3.6.repo /etc/yum.repos.d/mongodb-org-3.6.repo
RUN yum --disablerepo=rhel-7-server-htb-rpms install -y mongodb-org-tools-3.6.5;

# Current we need ansible 2.5 which is not yet release
# https://github.com/rht-labs/labs-ci-cd/issues/138 exists to move back to a RHEL supported ansible install once 2.5 is released
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm;
# Install python and ansible
RUN yum --disablerepo=rhel-7-server-htb-rpms install -y python-pip git;
RUN pip install --upgrade pip;  \
    pip install git+https://github.com/ansible/ansible.git@stable-2.5 && \
    yum clean all -y && \
    rm -rf /var/cache/yum


USER 1001
