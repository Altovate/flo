namespace :csvimport do

  desc "Import CSV Data."
  task :import_csv_data => :environment do

    require 'csv'

    csv_file_path = 'db/contacts.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Contact.create!({
        :name => row[0],
        :title => row[1],
        :publication => row[2],
        :email => row[3],
        :twitter => row[4],
        :verified => row[5],
        }
      )

    end

  end

end