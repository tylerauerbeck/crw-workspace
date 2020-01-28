# crw-workspace

*Note:* This is an initial solution to get us up and running. This method will be retired in the future so that this stack is built directly into CodeReady Workspaces


#Create Workspace

To deploy a CodeReady Workspace based off of the environment we've defined, visit the following URL to generate the initial workspace:

https://codeready-common.apps.honda-lde.rht-labs.com/f?url=https://github.com/tylerauerbeck/crw-workspace


#Build custom docker image

We're using a custom docker image that has all of our tools baked in. To build this custom image, run the following:

`oc process -f https://raw.githubusercontent.com/redhat-cop/containers-quickstarts/master/build-docker-generic/.openshift/templates/docker-build-template-with-secret.yml NAME=honda-lde-ws SOURCE_REPOSITORY_URL=https://github.com/honda-lde/crw-workspace SOURCE_REPOSITORY_REF=master SOURCE_REPOSITORY_SECRET=github-auth -n openshift | oc apply -f - -n openshift`
