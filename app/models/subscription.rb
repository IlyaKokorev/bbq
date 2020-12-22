class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true

  # Проверки user_name и user_email выполняются,
  # только если user не задан
  # То есть для анонимных пользователей
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }

  # Для конкретного event_id один юзер может подписаться только один раз (если юзер задан)
  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }

  # Или один email может использоваться только один раз (если анонимная подписка)
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }
  validate :check_email_for_subs
  validate :subscribers_is_author?, unless: -> { user.present? }

  # Если есть юзер, выдаем его имя,
  # если нет – дергаем исходный метод
  def user_name
    user&.name.presence || super
  end

  # Если есть юзер, выдаем его email,
  # если нет – дергаем исходный метод
  def user_email
    user&.email.presence || super
  end

  private

  def subscribers_is_author?
    errors.add(:user_email, :self_subscribe)
  end

  def check_email_for_subs
    errors.add(:user_email, :email_present) if
      user_id.nil? && user_email.presence &&
        User.find_by(email: user_email).present?
  end
end
