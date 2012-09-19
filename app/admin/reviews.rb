# -*- coding: utf-8 -*-
ActiveAdmin.register Review do
  menu label: 'Отзовы клиентов'

  filter :company_name
  filter :author
  filter :create_date

  index do
    id_column
    column :company_name
    column :author
    column :create_date
  end
end
