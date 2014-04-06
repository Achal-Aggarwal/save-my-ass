require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_services => :environment do

    csv_file_path = 'db/Lawyer_Service_List.csv'

    CSV.foreach(csv_file_path) do |row|
      Service.create!({
        :lawyer_code => row[0],
        :code => row[1],
        :name => row[2], 
        :charges => row[3]
      })
      puts "Row added!"
    end
  end
end