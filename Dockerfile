FROM registry.access.redhat.com/ubi8/ubi

# Required to stop angular-cli install from prompting for a response
ENV NG_CLI_ANALYTICS=ci

RUN curl https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz --output helm.tar.gz && tar --directory=/usr/local/bin --strip-components 1 -xzvf helm.tar.gz linux-amd64/helm -C /usr/local/bin/

RUN curl https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.2.16/openshift-client-linux-4.2.16.tar.gz --output oc.tar.gz && tar --directory=/usr/local/bin -xzvf oc.tar.gz oc && tar --directory=/usr/local/bin -xzvf oc.tar.gz kubectl

RUN dnf install -y git nodejs java-11-openjdk java-11-openjdk-devel python3
RUN npm install -g @angular/cli@8.3.23
