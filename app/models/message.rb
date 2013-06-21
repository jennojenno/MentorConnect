class Message < ActiveRecord::Base
  attr_accessible :body, :recipient_id, :sender_id, :subject
  belongs_to :recipient_id, class_name: "User", foreign_key: "recipient_id"
  belongs_to :sender_id, class_name: "User", foreign_key: "sender_id"
end
