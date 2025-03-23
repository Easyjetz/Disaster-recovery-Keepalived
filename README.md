
# Домашнее задание к занятию "`Disaster recovery и Keepalived`" - `Холопко Антон`



---

### Задание 1
- Дана [схема](1/hsrp_advanced.pkt) для Cisco Packet Tracer, рассматриваемая в лекции.
- На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
- Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
- Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
- На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

`Решение`

https://github.com/Easyjetz/Keepalived/blob/Anton/homework.pkt





![Задание1Скриншот1](https://github.com/Easyjetz/Keepalived/blob/Anton/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B51%D0%A1%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%821.png)
![Задание1Скриншот2](https://github.com/Easyjetz/Keepalived/blob/Anton/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B51%D0%A1%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%822.png)
---

### Задание 2
- Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного [файла](1/keepalived-simple.conf).
- Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
- Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
- Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
- На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

`Решение`
# Bash-скрипт
https://github.com/Easyjetz/Keepalived/blob/Anton/check_nginx.sh
# конфигурационный файл keepalived (MASTER И BACKUP)
https://github.com/Easyjetz/Keepalived/blob/Anton/keepalived-MASTER.txt
https://github.com/Easyjetz/Keepalived/blob/Anton/keepalived-BACKUP.txt

![Задание2Скриншот1](https://github.com/Easyjetz/Keepalived/blob/Anton/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B52%D0%A1%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%821.png)
![Задание2Скриншот2](https://github.com/Easyjetz/Keepalived/blob/Anton/%D0%97%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B52%D0%A1%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%822.png)


---

