# -*- coding: utf-8 -*-
ActiveAdmin.register ServiceCategory do
  menu label: 'Категории', parent: 'Услуги'

  config.clear_sidebar_sections!

  index do
    id_column
    column :title
    column :position
    default_actions
  end
end
