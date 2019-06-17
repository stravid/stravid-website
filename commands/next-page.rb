usage       'next-page'
summary     'Prints the metadata section for the next page.'
description ''

run do |options, arguments, cmd|
  site = Nanoc::Int::SiteLoader.new.new_from_cwd
  ids = site.items.map { |item| item.attributes[:id] }
  next_id = ids.max + 1

  puts 'Metadata section for next page:'
  puts ''
  puts '---'
  puts "id: #{next_id}"
  puts 'outputs:'
  puts "  - /#{next_id}/index.html"
  puts 'language: '
  puts 'title: '
  puts 'description: '
  puts '---'
end
