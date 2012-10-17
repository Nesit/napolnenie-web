FileUtils.rm_rf Rails.root.join('public/system/static_pages')

images = Dir.glob(Rails.root.join('db/sample/files/pandas', '*'))

StaticPage.all.each do |page|
  page.update_attribute(:image, File.new(images.sample))
end
