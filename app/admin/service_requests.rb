# -*- coding: utf-8 -*-
ActiveAdmin.register ServiceRequest do
  menu label: 'Услуга', parent: 'Заявки'

  filter :name
  filter :phone
  filter :email

  scope :all
  scope :readed
  scope :unreaded, :default => true

  index do
    column :name
    column :our_service
    column :phone
    column :email
    column :readed do |resource|
      resource.readed? ? 'Прочтен' : 'Не прочтен'
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :our_service, include_blank: false
      f.input :name
      f.input :email
      f.input :phone
      f.input :additionally
      f.input :readed, as: :select, collection: [['Прочтен', true], ['Не прочтен', false]], include_blank: false
    end
    f.buttons
  end
end
