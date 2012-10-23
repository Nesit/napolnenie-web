# -*- coding: utf-8 -*-
ActiveAdmin.register Banner do
  menu label: 'Банеры', parent: 'Страницы'

  config.clear_sidebar_sections!

  index do
    column 'Банер' do |resource|
      image_tag(resource.image.url) if resource.image.present?
    end
    column 'Страница' do |resource|
      resource.static_page.try(:title)
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :static_page
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url)
      f.input :text
    end
    f.buttons
  end
end
