FactoryBot.define do
  # Название фабрики
  factory :event do
    association :user

    # Генерируем евенты
    sequence(:title) { |n| "Событие №#{n}" }

    # Описание
    description { |n| "Какое-то тестовое описание #{n}" }

    # Адрес
    address { 'Москва' }

    # Время
    datetime { Time.now }
  end
end