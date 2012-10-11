# -*- coding: utf-8 -*-
ActiveAdmin.register ServiceCategory do
  menu label: 'Категории', parent: 'Услуги'

  config.clear_sidebar_sections!

  index do
    id_column
    column :title
    column :position
    column "Количество услуг" do |resource|
      resource.our_services.count
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :position
      f.input :title
      f.input :description, as: :html_editor
    end
    f.buttons
  end
end
