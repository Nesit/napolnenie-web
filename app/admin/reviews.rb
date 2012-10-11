# -*- coding: utf-8 -*-
ActiveAdmin.register Review do
  menu label: 'Отзовы клиентов'

  filter :company_name
  filter :author
  filter :create_date

  index do
    column :company_name
    column :author
    column :create_date
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :company_name
      f.input :author
      f.input :text, as: :html_editor
      f.input :create_date
    end
    f.buttons
  end
end
