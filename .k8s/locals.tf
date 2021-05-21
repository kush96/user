locals {
  // required common locals
  NAMESPACE  = "default-template-repo"
  CLUSTER_ID = var.ENVIRONMENT == "production" ? "primary-eks-hctf-prd-a1" : "primary-eks-hctf-stg-41"






  // required java-application locals
  JAVA_APPLICATION_DOCKER_IMAGE_NAME  = var.JAVA_APPLICATION_DOCKER_IMAGE_NAME != "" ? var.JAVA_APPLICATION_DOCKER_IMAGE_NAME : "default-template-repo/java-application"
  JAVA_APPLICATION_DOCKER_IMAGE_TAG   = var.JAVA_APPLICATION_DOCKER_IMAGE_TAG != "" ? var.JAVA_APPLICATION_DOCKER_IMAGE_TAG : var.ENVIRONMENT == "production" ? "stable" : "latest"
  JAVA_APPLICATION_REQUIRED_APPROVALS = var.JAVA_APPLICATION_REQUIRED_APPROVALS != "" ? var.JAVA_APPLICATION_REQUIRED_APPROVALS : var.ENVIRONMENT == "production" ? "1" : "0"
  JAVA_APPLICATION_CPU_REQUEST        = var.JAVA_APPLICATION_CPU_REQUEST != "" ? var.JAVA_APPLICATION_CPU_REQUEST : "100m"
  JAVA_APPLICATION_CPU_LIMIT          = var.JAVA_APPLICATION_CPU_LIMIT != "" ? var.JAVA_APPLICATION_CPU_LIMIT : "1000m"
  JAVA_APPLICATION_MEMORY_REQUEST     = var.JAVA_APPLICATION_MEMORY_REQUEST != "" ? var.JAVA_APPLICATION_MEMORY_REQUEST : "256Mi"
  JAVA_APPLICATION_MEMORY_LIMIT       = var.JAVA_APPLICATION_MEMORY_LIMIT != "" ? var.JAVA_APPLICATION_MEMORY_LIMIT : "1Gi"
  JAVA_APPLICATION_DESIRED_REPLICAS   = var.JAVA_APPLICATION_DESIRED_REPLICAS != "" ? var.JAVA_APPLICATION_DESIRED_REPLICAS : "1"
  JAVA_APPLICATION_MIN_REPLICAS       = var.JAVA_APPLICATION_MIN_REPLICAS != "" ? var.JAVA_APPLICATION_MIN_REPLICAS : "1"
  JAVA_APPLICATION_MAX_REPLICAS       = var.JAVA_APPLICATION_MAX_REPLICAS != "" ? var.JAVA_APPLICATION_MAX_REPLICAS : "1"
  JAVA_APPLICATION_HTTP_GET_PATH      = var.JAVA_APPLICATION_HTTP_GET_PATH != "" ? var.JAVA_APPLICATION_HTTP_GET_PATH : "/"
  JAVA_APPLICATION_HTTP_GET_PORT      = var.JAVA_APPLICATION_HTTP_GET_PORT != "" ? var.JAVA_APPLICATION_HTTP_GET_PORT : "80"
  JAVA_APPLICATION_INGRESS_HOSTNAME   = var.JAVA_APPLICATION_INGRESS_HOSTNAME != "" ? var.JAVA_APPLICATION_INGRESS_HOSTNAME : ""


  // required react-application locals
  REACT_APPLICATION_DOCKER_IMAGE_NAME  = var.REACT_APPLICATION_DOCKER_IMAGE_NAME != "" ? var.REACT_APPLICATION_DOCKER_IMAGE_NAME : "default-template-repo/react-application"
  REACT_APPLICATION_DOCKER_IMAGE_TAG   = var.REACT_APPLICATION_DOCKER_IMAGE_TAG != "" ? var.REACT_APPLICATION_DOCKER_IMAGE_TAG : var.ENVIRONMENT == "production" ? "stable" : "latest"
  REACT_APPLICATION_REQUIRED_APPROVALS = var.REACT_APPLICATION_REQUIRED_APPROVALS != "" ? var.REACT_APPLICATION_REQUIRED_APPROVALS : var.ENVIRONMENT == "production" ? "1" : "0"
  REACT_APPLICATION_CPU_REQUEST        = var.REACT_APPLICATION_CPU_REQUEST != "" ? var.REACT_APPLICATION_CPU_REQUEST : "100m"
  REACT_APPLICATION_CPU_LIMIT          = var.REACT_APPLICATION_CPU_LIMIT != "" ? var.REACT_APPLICATION_CPU_LIMIT : "1000m"
  REACT_APPLICATION_MEMORY_REQUEST     = var.REACT_APPLICATION_MEMORY_REQUEST != "" ? var.REACT_APPLICATION_MEMORY_REQUEST : "256Mi"
  REACT_APPLICATION_MEMORY_LIMIT       = var.REACT_APPLICATION_MEMORY_LIMIT != "" ? var.REACT_APPLICATION_MEMORY_LIMIT : "1Gi"
  REACT_APPLICATION_DESIRED_REPLICAS   = var.REACT_APPLICATION_DESIRED_REPLICAS != "" ? var.REACT_APPLICATION_DESIRED_REPLICAS : "1"
  REACT_APPLICATION_MIN_REPLICAS       = var.REACT_APPLICATION_MIN_REPLICAS != "" ? var.REACT_APPLICATION_MIN_REPLICAS : "1"
  REACT_APPLICATION_MAX_REPLICAS       = var.REACT_APPLICATION_MAX_REPLICAS != "" ? var.REACT_APPLICATION_MAX_REPLICAS : "1"
  REACT_APPLICATION_HTTP_GET_PATH      = var.REACT_APPLICATION_HTTP_GET_PATH != "" ? var.REACT_APPLICATION_HTTP_GET_PATH : "/"
  REACT_APPLICATION_HTTP_GET_PORT      = var.REACT_APPLICATION_HTTP_GET_PORT != "" ? var.REACT_APPLICATION_HTTP_GET_PORT : "80"
  REACT_APPLICATION_INGRESS_HOSTNAME   = var.REACT_APPLICATION_INGRESS_HOSTNAME != "" ? var.REACT_APPLICATION_INGRESS_HOSTNAME : ""




}
