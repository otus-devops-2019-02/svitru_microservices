# README HW №21
### **Мониторинг приложений и инфраструктуры:**
  - Установили docker-machine на GCP, настроили файрвол
  - Разделили docker-compose yaml'ы на приложения и мониторинг
  - Запустили в контейнере приложение reddit (ui, post, comment)
  - Добавили в yaml мониторинга cAdvisor, прописали сеть
  - Пересобрали образ Prometheus с конфигурацией cAdvisor
  - Добавили сервис мониторинга Grafana, включили в сеть
  - В Grafana добавили дашборд, графики с метрик Prometheus'а
  - Создали алертинг в Prometheus используя AlertManager
  - Настроили вебхуки в слаке для получения алертов из Prometheus
  - Собранные образы контейнеров отправили в хаб: https://cloud.docker.com/u/svitru/repository/list
 
