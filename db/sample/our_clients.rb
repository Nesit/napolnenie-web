FileUtils.rm_rf Rails.root.join('public/system/our_client')

images = Dir.glob(Rails.root.join('db/sample/files/logos', '*'))

50.times.each do |i|
  OurClient.create(title: Faker::Lorem.words.join(' '), logo: File.new(images.sample))
end
