# README HW №27
### **Работа с service:**
  - Испытали схемы взаимодействия pod'ов при разных типах **service**:
    - ClusterIP
    - NodePort
    - LoadBalancer
  - Разобрали работу kube-dns: выключение-включение
  - Использовали схему балансировки L7 трафика с помощью Ingress:
    - Балансировка HTTP-трафика
    - Терминация SSL используя самоподписанный сертификат и отключенный сервис HTTP
  - Задание со ⭐:
    - Создал зарезервированный ip для балансировщика ```gcloud compute addresses describe reddit-web-ip --global```
    - Добавил адрес **reddit-web-ip** в манифест ui-ingress.yml
    - Для зарезервированного ip и сопоставленному ему доменному имени **34-98-64-130.sslip.io** сгенерировал сертификат Let’s Encrypt
    - Создал манифест **ui-secret.yml** для сущности **Secret** и прописал в него сертификат и закрытый ключ
  - Использовали политику безопасностей **Network Policy** для разделения сервисов внутри виртуальной сети
  - Подключили внешнее хранилище данных **GCE** к mongo для предотвращения потери данных
