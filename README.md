# README HW №25
### **Установка компонент k8s вручную используя The Hard Way:**
  - Создали манифесты деплойментов post, ui, comment, mongo
  - Используя туториал The Hard Way установили кластер k8s в GCP:
    - Установили клиентские инструменты cfssl, cfssljson, and kubectl на локальный компьютер
    - В GCP настроили сеть VPC kubernetes-the-hard-way, правила файрвола, Load Balancer
    - Установили 3 инстанса k8s-контроллеров и 3 инстанса воркеров
    - Настроили доступ клиентских интсрументов по сертификатам
    - На контроллеры установлили etcd, kube-apiserver, kube-controller-manager, kube-scheduler, kubectl и настроили сервисы запуска
    - Установили и настроили на контроллерах nginx-proxy для helthcheck
    - На нодах воркеров установили kubectl, kube-proxy, kubelet, runc, runsc, настроили сети и сервисы
    - Настроили удаленный доступ к кластеру пользователю admin
    - Настроили сетевые маршруты между воркерами и установили и настроили CoreDNS
    - Протестировали запуск подов в кластере
  - Проверили запуск подов по деплойментам post, ui, comment, mongo:
    ```kubectl get pods```
    
    NAME                                 READY   STATUS    RESTARTS   AGE
    
    busybox-bd8fb7cbd-pgjxf              1/1     Running   0          12m
    
    comment-deployment-5f6458c9b-cm7hz   1/1     Running   0          48s
    
    mongo-deployment-6895dffdf4-xd2kj    1/1     Running   0          59s
    
    nginx-dbddb74b8-9qtcw                1/1     Running   0          9m42s
    
    post-deployment-f87b759bd-nxsk4      1/1     Running   0          54s
    
    ui-deployment-5f8df89648-qbksb       1/1     Running   0          68s
    
    untrusted                            1/1     Running   0          4m22s
 
  - Удалили кластер
