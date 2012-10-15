# -*- coding: utf-8 -*-
ActiveAdmin.register StaticPage do
  menu label: 'Страницы', parent: 'Страницы'

  filter :permalink

  form partial: 'form'

  controller do
    defaults finder: :find_by_permalink

    def add_banner
      banner = Banner.create(params[:banner])
      render :layout => false, :partial => 'add_banner', :locals => {:banner => banner}
    end
  end

  index do
    column :permalink
    column 'Количетсво баннеров' do |resource|
      resource.banners.count
    end
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
