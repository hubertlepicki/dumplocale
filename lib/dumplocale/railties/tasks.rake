require 'fileutils'

namespace :dumplocale do
  desc "extrancs all locales"
  task :to_yaml => :environment do
    dest_dir = File.join Rails.root, "tmp", "locales"
    FileUtils.rm_rf dest_dir
    FileUtils.mkdir_p dest_dir
    I18.available_locales.each do |locale|
      File.open(File.join(dest_dir, "#{locale}.yml", "w+")) do |f|
        f.write I18n.backend.instance_variable_get("@translations")[locale].to_yaml
      end
    end
  end
end
