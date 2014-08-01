* REST HTTP API:
-----------------------
Реализация REST HTTP API описанный в документации:
http://docs.notesapitest.apiary.io/

База данных: SQLite.

Логика обработки запросов: в контроллере NotesController.

Все ответы сервер формирует и присылает в формате json.

Без визуального интерфейса (только подключение API).
-----------------------
* CORS:
-----------------------
Для реализации CORS используется gem 'rack-cors'.
config/application.rb

module this_app
  class Application < Rails::Application
    # ...
    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :delete]
      end
    end
    # ...
  end
end

* ПРОВЕРКА НА РАБОТОСПОСОБНОСТЬ:
-----------------------
Для проверки работоспособности использовался gem 'rest-client'.
Реализация методов для проверки в lib/MyRestClient.rb
-----------------------