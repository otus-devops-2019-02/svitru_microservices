# README HW №17
### **Работа с сетями в docker:**
 - Запустили контейнер с сетевым драйвером none ```docker run -ti --rm --network none joffotron/docker-net-tools -c ifconfig```
 - Запустили контейнер с сетевым драйвером host ```docker run -ti --rm --network host joffotron/docker-net-tools -c ifconfig```
 
   Вывод идентичный выводу ```ifconfig``` на хостовой машине ```docker-machine ssh docker-host ifconfig```
 - Сравнили как меняется список net-namespaces при запуске сети host и none
 - Запустили приложение в двух сетях bridge преварительно создав две сети:
 
    ```docker network create back_net --subnet=10.0.2.0/24```
    
    ```docker network create front_net --subnet=10.0.1.0/24```
    
    и подключив контейнеры к второй сети командой ```docker network connect...```
 

### **Работа с docker-compose:**
 - Установили **docker-compose** на локальную машину ```pip install docker-compose```
 - Запустили приложение-контейнеры используя **docker-compose** ```docker-compose up -d``` используя переменные окружения в качестве подстановки параметров: ```export USERNAME=svitru```
 - С помощью файла **.env** параметризовали запуск приложения

Базовое имя проекта задаётся по умолчанию по имени директории из которой запускаются контейнеры. Изменить его возможно указав значение переменной окружения COMPOSE_PROJECT_NAME, а также указав ключ -p при запуске **docker-compose**.
