FileUtils.rm_rf Rails.root.join('public/system/banners')

images = Dir.glob(Rails.root.join('db/sample/files/pandas', '*'))
Banner.all.each do |banner|
  banner.update_attribute(:image, File.new(images.sample))
end

