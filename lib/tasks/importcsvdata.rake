namespace :csvimport do

  desc "Import CSV Data."
  task :import_csv_data => :environment do

    require 'csv'

    csv_file_path = 'db/contacts.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Contact.create!({
        :first_name => row[0],
        :last_name => row[1],
        :title => row[2],
        :publication => row[3],
        :phone => row[4],
        :email => row[5],
        :twitter => row[6],
        :verified => row[7],
        }
      )

    end

  end

end