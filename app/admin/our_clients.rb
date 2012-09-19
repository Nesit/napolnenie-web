# -*- coding: utf-8 -*-
ActiveAdmin.register OurClient do
  menu label: 'Наши клиенты'

  config.clear_sidebar_sections!

  index do
    id_column
    column :title
    column "Лого" do |client|
      link_to image_tag(client.logo.url), admin_our_client_path(client)
    end
    column :created_at
    default_actions
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs 'Основное' do
      f.input :title
      f.input :logo, as: :file,
      hint: f.template.image_tag(f.object.logo.url)
    end
    f.buttons
  end

  show do
    attributes_table_for resource do
      row :title
      row "Логотип" do
        link_to image_tag(resource.logo.url), resource.logo.url(:original)
      end
    end
  end

end
