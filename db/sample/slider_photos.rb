FileUtils.rm_rf Rails.root.join('public/system/slider_photos')

images = Dir.glob(Rails.root.join('db/sample/files/pandas', '*'))
page_ids = StaticPage.all.map(&:id)

page_ids.each do |id|
  rand(images.size).times.each { SliderPhoto.create(image: File.new(images.shuffle.first), static_page_id: id) }
end
