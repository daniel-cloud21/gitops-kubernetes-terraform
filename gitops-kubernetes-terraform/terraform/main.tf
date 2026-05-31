# Define quais provedores o Terraform precisa baixar
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }
}

# Configura o provedor para se conectar ao Kubernetes local (Minikube / Docker Desktop)
provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Cria o Namespace de Desenvolvimento
resource "kubernetes_namespace" "dev" {
  metadata {
    name = "dev"
    labels = {
      environment = "development"
    }
  }
}

# Cria o Namespace de Produção
resource "kubernetes_namespace" "prod" {
  metadata {
    name = "prod"
    labels = {
      environment = "production"
    }
  }
}
