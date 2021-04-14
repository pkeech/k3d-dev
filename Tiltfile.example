## BUILD DOCKER IMAGE (Pick One)
docker_build('sample-app', '<<Path-to-project-dir>>', dockerfile='<<Path-to-project-dir>>/<<Path-to-project-Dockerfile>>')
docker_build('sample-appr', '<<Path-to-project-dir>>')
docker_build('sample-app', '<<Path-to-project-dir>>', target='development')

## TRADITIONAL K8S DEPLOYMENT or HELM DEPLOYMENT (Pick One)

## TRADITIONAL K8S DEPLOYMENT
k8s_yaml('<<Path-to-project-deployment-yamls or yaml file>>')

## HELM DEPLOYMENT
k8s_yaml(
  helm(
    'sample/conf/charts/sample-app',
    set=['app.srcFrom=null']
  )
)