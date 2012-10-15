# -*- coding: utf-8 -*-
ActiveAdmin.register Banner do
  menu label: 'Банеры', parent: 'Страницы'

  config.clear_sidebar_sections!

  index do
    column 'Страница' do |resource|
      link_to resource.static_page.permalink, admin_static_page_path(resource)
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :static_page
      f.input :text
    end
    f.buttons
  end
end
