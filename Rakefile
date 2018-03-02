load 'protobuf/tasks/compile.rake'

task :compile do
  # do some stuff before compile

  ENV['PB_UPCASE_ENUMS'] = '1'
  # Call the compile again with other args
  ::Rake::Task['protobuf:compile'].invoke('steamclient', './lib/steam/client/resources/definitions', './lib/steam/client/resources/protobufs')
  # system 'protoc --ruby-protobuf_out=./lib/steam/client/resources/protobufs -I ./lib/steam/client/resources/definitions/steamclient  ./lib/steam/client/resources/definitions/steamclient/*.proto'

  # do some stuff after compile
end
namespace :protobuf do

end

#
# require "fileutils"
#
# namespace :protobuf do
#
#   desc "Clean & Compile the protobuf source to ruby classes. Pass PB_NO_CLEAN=1 if you do not want to force-clean first."
#   task :compile, [:package, :source, :destination, :plugin, :file_extension] do |_tasks, args|
#     binpath = ::File.expand_path("../../../../bin", __FILE__)
#
#     args.with_defaults(:destination => "lib")
#     args.with_defaults(:source => "definitions")
#     args.with_defaults(:plugin => "protoc-gen-ruby-protobuf=#{binpath}/protoc-gen-ruby")
#     args.with_defaults(:file_extension => ".pb.rb")
#
#     # The local Ruby generator collides with the builtin Ruby generator
#     #
#     # From the protoc docs:
#     #
#     #   --plugin=EXECUTABLE
#     #
#     #   ...EXECUTABLE may be of the form NAME=PATH, in which case the given plugin name
#     #   is mapped to the given executable even if the executable"s own name differs.
#     #
#     # Use the NAME=PATH form to specify an alternative plugin name that avoids the name collision
#     #
#     plugin_name, _plugin_path = args[:plugin].split("=")
#
#     # The plugin name MUST have the protoc-gen- prefix in order to work, but that prefix is dropped
#     # when using the plugin to generate definitions
#     plugin_name.gsub!("protoc-gen-", "")
#
#     unless do_not_clean?
#       force_clean!
#       ::Rake::Task[:clean].invoke(args[:package], args[:destination], args[:file_extension])
#     end
#
#     command = []
#     command << "protoc"
#     command << "--plugin=#{args[:plugin]}"
#     command << "--#{plugin_name}_out=#{args[:destination]}"
#     command << "-I #{args[:source]}/#{args[:package]}"
#     command << Dir["#{args[:source]}/#{args[:package]}/**/*.proto"].join(" ")
#     full_command = command.join(" ")
#
#     puts full_command
#     system(full_command)
#   end
#
#   desc "Clean the generated *.pb.rb files from the destination package. Pass PB_FORCE_CLEAN=1 to skip confirmation step."
#   task :clean, [:package, :destination, :file_extension] do |_task, args|
#     args.with_defaults(:destination => "lib")
#     args.with_defaults(:file_extension => ".pb.rb")
#
#     file_extension = args[:file_extension].sub(/\*?\.+/, "")
#     files_to_clean = ::File.join(args[:destination], args[:package], "**", "*.#{file_extension}")
#
#     if force_clean? || permission_to_clean?(files_to_clean)
#       ::Dir.glob(files_to_clean).each do |file|
#         ::FileUtils.rm(file)
#       end
#     end
#   end
#
#   def do_not_clean?
#     ! ::ENV.key?("PB_NO_CLEAN")
#   end
#
#   def force_clean?
#     ::ENV.key?("PB_FORCE_CLEAN")
#   end
#
#   def force_clean!
#     ::ENV["PB_FORCE_CLEAN"] = "1"
#   end
#
#   def permission_to_clean?(files_to_clean)
#     puts "Do you really want to remove files matching pattern #{files_to_clean}? (y/n)"
#     ::STDIN.gets.chomp =~ /y(es)?/i
#   end
#
# end
