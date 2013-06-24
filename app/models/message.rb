class Message < ActiveRecord::Base
  attr_accessible :body, :recipient_id, :sender_id, :subject
  belongs_to :recipient, class_name: "User", primary_key: "recipient_id"
  belongs_to :sender, class_name: "User", primary_key: "sender_id"
end
