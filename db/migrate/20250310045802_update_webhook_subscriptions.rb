# rubocop:disable Layout/LineLength
class UpdateWebhookSubscriptions < ActiveRecord::Migration[7.0]
  def change
    change_column_default :webhooks, :subscriptions,
                          from: %w[conversation_status_changed conversation_updated conversation_created contact_created contact_updated message_created message_updated webwidget_triggered], to: %w[conversation_status_changed conversation_updated conversation_created contact_created contact_updated message_created message_updated webwidget_triggered note_created]
  end
end
# rubocop:enable Layout/LineLength
