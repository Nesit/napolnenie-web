# -*- coding: utf-8 -*-
ActiveAdmin.register OurService do
  menu label: 'Услуги', parent: 'Услуги'

  config.clear_sidebar_sections!

  index do
    column :title
    column "Категория" do |resource|
      link_to resource.service_category.title, admin_service_category_path(resource.service_category)
    end
    default_actions
  end

  form do |f|
    f.inputs 'Основное' do
      f.input :service_category
      f.input :title
      f.input :text, as: :html_editor
      f.input :hint, as: :html_editor
    end
    f.buttons
  end
end
