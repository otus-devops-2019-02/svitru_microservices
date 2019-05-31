# README HW №16
### **Создание микросервисов:**
 - Разбили приложение на 3 микросервиса: post, comment, ui
 - Собрали три образа post-py, comment, ui командой ```docker build``` воспользовавшись подсказками из зала для исправления ошибок в исходных Dockerfiles

### **Запуск приложения:**
 - Создали сеть для приложения ```docker network create reddit```
 - Запустили контейнеры ```docker run -d ...```

### **Оптимизация приложения:**
 - Откорректировали Dockerfile компонента ui для уменьшения образа
 - Перезапустили контейнеры
 - Создали Docker volume
 - Перезапустили контейнеры, подключив volume к MongoDB
