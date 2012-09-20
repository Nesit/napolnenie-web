# -*- coding: utf-8 -*-
ActiveAdmin.register Page do
  menu label: 'Страницы'

  filter :permalink

  form partial: "form"

  controller do

    # TODO: add bad response when photos can't destroy
    def destroy_slider_photo
      SliderPhoto.find(params[:id]).destroy
      head :ok
    end
  end
end
