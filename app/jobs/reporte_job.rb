class ReporteJob < ApplicationJob
  queue_as :reports

  def perform(*args)
    sleep 8
    if File.directory?("#{Rails.root.join('public')}/reports").blank?
      Dir.mkdir "#{Rails.root.join('public')}/reports"
    end
    code = (0...8).map { (65 + rand(26)).chr }.join
    out_file = File.new("#{Rails.root.join('public')}/reports/report#{code}.html", "w")
    out_file.puts("<p>Your report here - code: <b>#{code}</b></p>")
    out_file.puts("<hr>")
    out_file.close
  end
end
