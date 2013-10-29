require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb festivals`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb festivals`
  end
end