 namespace :messages do
  desc "古いチャットメッセージを削除する"
  task delete_old_messages: :environment do
    #Message.where(['created_at < ?', 1.days.ago]).destroy_all
    Message.where("created_at<?",Time.now-(30.minutes)).delete_all
  end
 end
