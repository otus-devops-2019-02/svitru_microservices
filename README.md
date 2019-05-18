# README HW №15
### **Создание докер-хоста:**
 - Создали новый проект на GCP
 - Создали новый docker-хост на GCP с помощью ```docker-machine create```
 - Проверили уровни изоляции
### **Создание образа:**
 - В каталоге docker-monolith создали файлы для сборки docker-образа:
   - Dockerfile
   - mongod.conf
   - db_config
   - start.sh
 - Создали образ командой ```docker build -t reddit:latest .```
 - Зарегистрировались на докер-хабе и залили туда свой образ ```docker push svitru/otus-reddit:1.0```
### **Задание с "*":**
   - Создали прототип инфратруктуры в infra: terraform, ansible, packer
   - В ansible создали конфигурацию и плейбуки для установки docker и запуск контейнера
   - В terraform создали конфигурацию с провижинерами плейбуков
   - Packer'ом собрали образ с провижинерами установленного python, docker и нашего приложения контейнера svitru/otus-reddit:1.0
