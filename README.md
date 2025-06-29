# Terraform GKE Cluster (MVP)

Цей репозиторій використовує [tf-google-gke-cluster](https://github.com/artur-nikitenko/tf-google-gke-cluster) як модуль для створення простого кластеру GKE (Google Kubernetes Engine) у Google Cloud Platform.

## ⚙️ Передумови

- Google Cloud SDK (`gcloud`)
- Активований GCP проєкт
- Terraform ≥ 1.6.6
- Створений GCS bucket для backend

## 📁 Структура репозиторію
├── main.tf             # Основна конфігурація Terraform
├── variables.tf        # Вхідні змінні
├── vars.tfvars         # Значення змінних для запуску

## 🧪 Команди

### 1. Ініціалізація Terraform

```bash
terraform init
```

### 2. Перевірка плану

```bash
terraform plan -var-file="vars.tfvars"
```

### 3. Створення і видалення  кластеру

```bash
terraform apply -var-file="vars.tfvars"
terraform destroy -var-file="vars.tfvars"
```

### addditional commands

```bash
terraform init -upgrade
terraform validate
terraform show
infracost breakdown --path=. --terraform-var-file="vars.tfvars"
```
