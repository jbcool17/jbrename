require "jbrename/version"
require 'shellwords'

module Jbrename
  def self.test
    puts "Hello World"
  end

  def self.rename_one(path="*", replace=' ', replace_with='_')
    Dir.glob(path) do |f|
      path_split = f.split('/')
      last_in_path = path_split.slice!(-1)
      first_in_path = path_split.join('/') + '/'

      org_escaped = Shellwords.escape(f)
      new_escaped = Shellwords.escape(first_in_path + last_in_path.gsub(replace, replace_with))
      puts "++> ENTERING DIRECTORY: #{org_escaped}"
      if org_escaped != new_escaped
        puts "==> RENAMING: #{org_escaped} ==> #{new_escaped}"
        `mv #{org_escaped} #{new_escaped}`
      end
    end
  end


  def self.rename_all(path="*", replace=' ', replace_with='_')
    Dir.glob(path) do |f|

      path_split = f.split('/')
      last_in_path = path_split.slice!(-1)
      first_in_path = path_split.join('/') + '/'

      org_escaped = Shellwords.escape(f)
      new_escaped = Shellwords.escape(first_in_path + last_in_path.gsub(replace, replace_with))

      if File.directory? f
          puts "++> ENTERING DIRECTORY: #{org_escaped}"
          puts "==> RENAMING: #{org_escaped} ==> #{new_escaped}"
          if org_escaped != new_escaped
            `mv #{org_escaped} #{new_escaped}`
          end

          self.rename_all("#{new_escaped}/*", replace, replace_with)
      else
        if org_escaped != new_escaped
          puts "==> RENAMING: #{org_escaped} ==> #{new_escaped}"
          `mv #{org_escaped} #{new_escaped}`
        end
      end
    end
  end

  def self.cmd_all(cmd, path="*", replace=' ', replace_with='_')
    Dir.glob(path) do |f|

      path_split = f.split('/')
      last_in_path = path_split.slice!(-1)
      first_in_path = path_split.join('/') + '/'

      org_escaped = Shellwords.escape(f)
      new_escaped = Shellwords.escape(first_in_path + last_in_path.gsub(replace, replace_with))

      if File.directory? f
          puts "++> ENTERING DIRECTORY: #{org_escaped}"
          puts "==> RENAMING: #{org_escaped} ==> #{new_escaped}"
          if org_escaped != new_escaped
            `#{cmd} #{org_escaped} #{new_escaped}`
          end

          self.rename_all("#{new_escaped}/*", replace, replace_with)
      else
        if org_escaped != new_escaped
          puts "==> RENAMING: #{org_escaped} ==> #{new_escaped}"
          `cmd #{org_escaped} #{new_escaped}`
        end
      end
    end
  end



end
