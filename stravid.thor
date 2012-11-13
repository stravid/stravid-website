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

  desc "deploy", "deploys the site via LFTP to the location specified in the environment"
  def deploy
    load_ftp_configuration

    start_timestamp = Time.now.to_i

    if system("lftp -e 'mirror -R -v #{ENV['PUBLIC_DIRECTORY']} #{ENV['FTP_TARGET_DIRECTORY']}; bye' -u #{ENV['FTP_USER']},#{ENV['FTP_PASSWORD']} #{ENV['FTP_SERVER']}")
      puts "Deploy finished. (Duration: #{Time.now.to_i - start_timestamp} seconds)"
    else
      puts 'Deploy aborted, something went wrong.'
    end
  end

  private
  def load_ftp_configuration
    configuration_file = "ftp_configuration.yml"

    if File.exists? configuration_file
      configuration_hash = YAML.load_file configuration_file
      configuration_hash.each do |key, value|
          ENV[key.upcase] = value
      end
    else
      throw 'Missing `ftp_configuration.yml` to specify ftp configuration variables.'
    end
  end
end
