## Spring Framework
### Тема: Hystrix Circuit Breaker
#### Домашнее задание №18:
**Обернуть внешние вызовы в Hystrix**

Цель: сделать внешние вызовы приложения устойчивыми к ошибкам

Результат: приложение с изолированными с помощью Hystrix внешними вызовами

1. Обернуть все внешние вызовы в Hystrix, Hystrix Javanica.
2. Возможно использование Resilent4j
3. Возможно использование Feign Client

Опционально: Поднять Turbine Dashboard для мониторинга.

--------------------------------------------------------------------------------

Пользователи: user/user и admin/admin

Демонстрация hystrix:
1) приходит пустой список книг вместо 3 существующих в базе по умолчанию (ru.otus.spring.service.impl.BookServiceImpl.findAllBooks)
2) все поля данных о книге содержат "N/A", это заглушка (ru.otus.spring.service.impl.BookServiceImpl.findBookById)

В обоих случаях превышение 3 секунд определяется случайно через Random.nextBoolean.

Порог допустимого времени ожидания задан в application.yml. Допустимое время 3 секунды.