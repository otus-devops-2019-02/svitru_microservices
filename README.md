# README HW №29
### **Мониторинг в kubernetes:**
  - Подготовили кластер из 3х нод:
  - Установили ingress-контроллер **nginx** ```helm install stable/nginx-ingress --name nginx```
  - Прописали в /etc/hosts адрес балансировщика
  - Установили Prometheus с помощью Helm: ```helm fetch --untar stable/prometheus```
  - Добавили custom_values.yml
  - Запустили chart Prometheus: ```helm upgrade prom . -f custom_values.yml --install```
  - Проанализировали endpoints
  - Запустили приложение reddit из helm чарта: ```helm upgrade reddit-test ./reddit --install```
  - Настроили в **custom_values.yml** метрики приложений
  - Осуществили визуализацию метрик в Grafana
