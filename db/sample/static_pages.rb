main_page = StaticPage.find_by_permalink('main')
main_page.update_attribute(:text1, Faker::HTMLIpsum.fancy_string(10, true))
