 namespace :messages do
  desc "古いチャットメッセージを削除する"
  task delete_old_messages: :environment do
    Message.where(['created_at < ?', 1.days.ago]).destroy_all
  end
 end
