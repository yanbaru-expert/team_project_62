require "csv"

class ImportCsv
  def self.import_text_data(path)
    CSV.foreach(path, headers: true) do |row|
      Text.create!(row.to_h)
    end
  end

  def self.import_movie_data(path)
    CSV.foreach(path, headers: true) do |row|
      Movie.create!(row.to_h)
    end
  end
end
