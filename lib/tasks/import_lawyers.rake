require 'csv'

namespace :csv do

  desc "Import CSV Data"
  task :import_lawyers => :environment do

    csv_file_path = 'db/Lawyers_City_List.csv'

    CSV.foreach(csv_file_path) do |row|
      Lawyer.create!({
        :code => row[0],
        :name => row[1],
        :exp_year => row[2], 
        :location_city => row[3],
        :rating_avg => row[4]
      })
      puts "Row added!"
    end
  end
end