# GitOps Kubernetes Terraform Pipeline 🚀

Este projeto demonstra a implementação prática de uma cultura DevOps/GitOps ponta a ponta. Ele automatiza o provisionamento de infraestrutura em nuvem e a entrega contínua de aplicações em múltiplos ambientes (Dev/Prod) de forma 100% declarativa.

## 🛠️ Tecnologias Utilizadas

* **Infraestrutura como Código (IaC):** Terraform
* **Orquestração de Containers:** Kubernetes
* **Entrega Contínua (CD):** ArgoCD (Abordagem GitOps)
* **Integração Contínua (CI):** GitHub Actions
* **Containerização:** Docker

## 🏗️ Arquitetura do Projeto

* **CI (GitHub Actions):** Valida o código, roda testes, constrói a imagem Docker e publica no registro.
* **IaC (Terraform):** Provisiona e gerencia o cluster Kubernetes de forma automatizada.
* **CD (ArgoCD):** Sincroniza o estado desejado dos manifestos Kubernetes do Git diretamente no cluster.

## 📁 Estrutura do Repositório

* `/app`: Código-fonte da aplicação fictícia.
* `/terraform`: Arquivos de configuração da infraestrutura.
* `/k8s-manifests`: Manifestos Kubernetes divididos por ambientes (Dev/Prod).
