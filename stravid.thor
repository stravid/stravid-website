require 'stringex'

class Stravid < Thor
  desc "german POST_TITLE", "generates a new german post"
  def german post_title
    filename = "de/_posts/#{Time.now.strftime('%Y-%m-%d')}-#{post_title.to_url}.md"

    abort("#{filename} already exists!") if File.exists? filename

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: german_post"
      post.puts "title: \"#{post_title.gsub(/&/,'&amp;')}\""
      post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
      post.puts "---"
    end
  end

  desc "english POST_TITLE", "generates a new english post"
  def english post_title
    filename = "en/_posts/#{Time.now.strftime('%Y-%m-%d')}-#{post_title.to_url}.md"

    abort("#{filename} already exists!") if File.exists? filename

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: english_post"
      post.puts "title: \"#{post_title.gsub(/&/,'&amp;')}\""
      post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
      post.puts "---"
    end
  end
end
