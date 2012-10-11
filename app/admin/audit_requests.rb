# -*- coding: utf-8 -*-
ActiveAdmin.register AuditRequest do
  menu label: 'Аудит', parent: 'Заявки'

  filter :url
  filter :email

  scope :all
  scope :readed
  scope :unreaded, :default => true

  index do
    column :url
    column :email
    column :phone
    column :readed do |resource|
      resource.readed? ? 'Прочтен' : 'Не прочтен'
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :url
      f.input :email
      f.input :phone
      f.input :additionally
      f.input :readed, as: :select, collection: [['Прочтен', true], ['Не прочтен', false]], include_blank: false
    end
    f.buttons
  end
end
