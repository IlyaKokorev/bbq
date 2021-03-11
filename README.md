# Приложение BBQ

Приложение для организации и координации событий.

Разработано на `Ruby 2.7.0` и `rails 6.0.3`

Приложение на [VPS](http://neverends.site/)

Приложение на [Heroku](https://ilyabbq.herokuapp.com/) (демо)

---

В данном приложении вы можете создать событие или подписаться на чужое, оставить комментарий и посмотреть подписчиков на событие, а также загрузить фото.

---

Упаковано в `Bootstrap 4`

Реализована регистрация и аутентификация пользователей через `devise` или социальные сети.

Авторизацией занимается `pundit`

Реализована отправка писем при подписке/отписке на событие или оставленном комментарии через `ActionMailer`. 

Функция отправки писем переведена на `ActiveJob`. Весь необходимый стек `redis` настроен на `VPS`

Отработана функция загрузки фото через `fog-aws`, при деплое на `heroku`

Деплой реализован и налажен на `capistrano`

## Установка и запуск

* `git clone git@github.com:IlyaKokorev/bbq.git`
* `bundle install`
* `bundle exec rake db:migrate`
* `yarn`
* `bundle exec rails s`
* `http://localhost:3000/`

В целях безопасности в репозитории отстуствуют файлы config/database.yml, config/master.key, Вам необходимо создать их дополнительно.

Также Вам потребуется прописать свои переменные окружения для почтового сервиса.
