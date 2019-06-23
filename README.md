# README HW №21
### **Работа с Prometheus:**
  - Установили docker-machine на GCP, настроили файрвол
  - Запустили prometheus в контейнере, ознакомление с веб-интерфейсом
  - Создали докер-образ prometheus в дополнение к контейнерам приложения reddit с добавленными метриками приложений в **prometheus.yml**
  - Пересобрали образы приложения ```bash docker_build.sh```
  - Добавили в docker-compose.yml сервис prometheus, запустили контейнеры ```docker-compose up -d```
  - Ознакомились с списком endpoint, проверили состояние healthcheck
  - Изменили состояние healthcheck остановкой сервиса ```docker-compose stop post```, проверили как изменяется график состояния
  - Добавили экспортер **Node** для снятия метрик состояния хоста
  - Осуществили пуш образов в докер-хаб https://cloud.docker.com/u/svitru/repository/list
  
 
