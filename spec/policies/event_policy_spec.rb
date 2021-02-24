require 'rails_helper'

RSpec.describe EventPolicy, type: :policy do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:event) { create(:event, user: user2) }

  subject { described_class }

  # Пользователь user1 не является владельцем события
  context 'user does not own this event' do
    permissions :edit?, :destroy?, :update? do
      it { is_expected.not_to permit(user1, event) }  # не может редактировать чужое событие
    end

    permissions :create? do
      it { is_expected.to permit(user1, Event) } # но может создать своё
      it { is_expected.not_to permit(nil, Event) } # но только если залогинен
    end
  end

  # Пользователь user2 является владельцем события
  context 'user owns this event' do
    permissions :edit?, :destroy?, :update? do
      it { is_expected.to permit(user2, event) } # может редактировать свое событие
    end

    permissions :create? do
      it { is_expected.to permit(user2, Event) } # может создать своё
      it { is_expected.not_to permit(nil, Event) } # но только если залогинен
    end
  end
end
