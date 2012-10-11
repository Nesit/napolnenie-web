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
end
