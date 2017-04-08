require 'prmd/rake_tasks/combine'
require 'prmd/rake_tasks/verify'
require 'prmd/rake_tasks/doc'

namespace :prmd do
  Prmd::RakeTasks::Combine.new do |t|
    t.options[:meta] = 'docs/schema/meta.yml'
    schema_paths = Dir[File.join(Rails.root, 'docs', 'schema', 'schemata', '*.yml')]
    schema_paths.each {|file_path| t.paths << file_path }
    t.output_file = 'docs/schema/schema.json'
  end

  Prmd::RakeTasks::Verify.new do |t|
    t.files << 'docs/schema/schema.json'
  end

  Prmd::RakeTasks::Doc.new do |t|
    t.options[:settings] = "docs/schema/config.json"
    t.files = { 'docs/schema/schema.json' => 'docs/schema/schema.md' }
  end
end

task default: ['schema:combine', 'schema:verify', 'schema:doc']
