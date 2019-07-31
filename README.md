# README HW №28
### **Работа с Helm:**
  - Произвели установку Helm
  - Установлили серверную часть Helm - Tiller:
    - ```kubectl apply -f tiller.yml```
    - ```helm init --service-account tiller```
  - Создали структуру директорий для Chart'ов для ui
  - Шаблонизировали Chart'ы, добавили значения переменных **values.yaml**
  - Собрали Chart'ы для всех компонент
  - Создали единый chart reddit, объединяющий все компоненты
  - Выкатили приложение в k8s: ```helm install reddit --name reddit-test```
### **Развертывание Gitlab в Kubernetes:**
  - Подготовили кластер создав более толстый пул
  - Добавили репозиторий gitlab: ```helm repo add gitlab https://charts.gitlab.io```
  - Скачали Chart: ```helm fetch gitlab/gitlab-omnibus --version 0.1.37 --untar```
  - Установили chart gitlab, предварительно поправив манифесты: ```helm install --name gitlab . -f values.yaml```
  - Настроили GitLab: группы, проекты, переменные
### **Запуск CI/CD конвейера в Kubernetes:**
  - Создали репозитории приложений
  - Подключили удаленные репозитории в GitLab
  - Добавили пайплайны .gitlab-ci.yml в репозитории приложений
  - Произвели сборки приложений
  - Добавили функцию **deploy**, которая создает релиз приложения в окружении review
  - Добавили функцию **cleanup** для удаления окружения
  - Произвели deploy приложения
