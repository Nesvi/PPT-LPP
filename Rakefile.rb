task :default => :rps

desc "Run ppt.rb with ruby"
task :rps do
  sh "ruby PPT.rb "
end

desc "clean the temporal files"
task :clean do
  sh "rm -fr *.gz *~ *swp"
end

desc "Pruebas"
task "test" do

  sh "ruby st_PPT.rb"
  sh "ruby tc_PPT.rb"

end

desc "Prueba de tipos" 
task "typetest" do

  sh "ruby tc_PPT.rb"

end

desc "Prueba simple de funcionamiento" 
task "simpletest" do

  sh "ruby st_PPT.rb"

end
