# README HW №26
### **Запуск приложения в кластере в локальном окружении:**
  - Установили утилиты для локального развертывания кластера **kubectl** и **minicube**
  - Развернули локальный кластер в виртуальной среде **VirtualBox** командой ```minicube start```
  - В репозитории создали файлы манифестов деплойментов приложения **reddit**:
    - ui-deployment.yml
    - comment-deployment.yml
    - post-deployment.yml
    - mongo-deployment.yml
  - Создали деплойменты в кластере командой ```kubectl apply -f XXX-deployment.yml```
  - Для связи компонентов приложения между собой создали манифесты сервисов:
    - comment-service.yml
    - post-service.yml
    - mongodb-service.yml
    - comment-mongodb-service.yml
    - post-mongodb-service.yml
  - Деплоим сервисы ```kubectl apply -f ...```
  - Создаем сервис типа NodePort ui-service.yml для предоставления порта приложения наружу кластера ```kubectl apply -f ui-service.yml```
  - Открываем web-страницу приложения используя **minicube**: ```minikube service ui```
### **Работа с окружениями Namespaces в minicube:**
  - Подключаемся к дашборду minicube в окружении **kube-system** ```minikube service kubernetes-dashboard -n kube-system```
  - Описали окружение разработки **dev** в манифесте dev-namespace.yml и создали его ```kubectl apply -f dev-namespace.yml```
  - Запустили приложение **reddit** в окружении **dev** ```kubectl apply -n dev -f …```
  - Открыли приложение командой ```minikube service ui -n dev```
### **Разворачиваем k8s в GCP:**
  - В среде **GKE** установили кластер используя web-интерфейс
  - Используя консольную утилиту **gcloud** подключились к кластеру ```gcloud container clusters get-credentials standard-cluster-1 --zone us-central1-a --project docker-240419```
  - Создали **dev** окружение в кластере ```kubectl apply -f ./kubernetes/reddit/dev-namespace.yml```
  - Запустили приложение **reddit** в окружении **dev** ```kubectl apply -f ./kubernetes/reddit/ -n dev```
  - Открыли в файрволе GCP диапазон портов для подключени к приложению
  - Открываем web-страницу с запущенным приложением <http://35.232.251.226:30847>
### **Дашборд кубернетес в GKE:**
  - В настройках GKE активируем дашборд
  - Проксируем подключение к кластеру на локальную машину ```kubectl proxy```
  - Назначили роль **cluster-admin** для сервисному аккаунту дашборда для получения прав доступа
  - Подключаемся к дашборд по адресу <http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/.>
