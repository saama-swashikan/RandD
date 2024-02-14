resource "helm_release" "sch-deployment-master" {
  name                = "vishnu-poc"
  namespace           = "vishnu-poc"
  chart               = "/home/ubuntu/api-task/helm"
values = [
    templatefile("${path.module}/templates/values.yaml.tftpl", {
airflow_username = var.airflow_username
airflow_password = var.airflow_password
})
  ]
}
