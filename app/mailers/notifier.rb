# -*- coding: utf-8 -*-
class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def send_message(message)
    @message = message
    mail(:to => @message.recipient_address,
         :subject => 'Создание соощения')
  end
end
