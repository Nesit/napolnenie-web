# -*- coding: utf-8 -*-
ActiveAdmin.register StaticPage do
  menu label: 'Страницы'

  filter :permalink

  form partial: 'form'

  controller do
    defaults finder: :find_by_permalink
  end

  index do
    column :permalink
    default_actions
  end

  show do
    attributes_table :id, :permalink

    panel 'Текст' do
      simple_format resource.text1
    end

    active_admin_comments
  end

end
