FactoryBot.define do
  # Название фабрики
  factory :user do

    # Генерируем тестовых юзеров
    sequence(:name) { |n| "user_№#{n}" }

    # Задаем мыло
    email { "#{name.downcase}@example.com" }

    # Задаем пароль
    after(:build) { |u| u.password_confirmation = u.password = "123123" }
  end
end
