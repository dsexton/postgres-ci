# frozen_string_literal: true
desc 'Builds latest image'
task :build do
  Rake::Task['build:latest'].invoke
end

namespace :build do
  desc 'Builds all images'
  task :all do
    Rake::Task['build:latest'].invoke
    Rake::Task['build:postgres_9_6'].invoke
  end
  
  desc 'Builds latest image'
  task :latest do
    sh 'docker pull postgres:latest'
    sh 'docker build -t dsexton/postgres-ci:latest .'
  end
  
  desc 'Builds postgres 9.6 image'
  task :postgres_9_6 do
    sh 'docker pull postgres:9.6'
    sh 'docker build -t dsexton/postgres-ci:9.6 -f 9.6/Dockerfile .'
  end
end

desc 'Pushes latest image'
task :push do
  Rake::Task['push:latest'].invoke
end

namespace :push do
  desc 'Pushes all images'
  task :all do
    Rake::Task['push:latest'].invoke
    Rake::Task['push:9_6'].invoke
  end

  desc 'Pushes latest image to the registry'
  task :latest do
    sh 'docker push dsexton/postgres-ci:latest'
  end

  
  desc 'Pushes postgres 9.6 image to the registry'
  task :postgres_9_6 do
    sh 'docker push dsexton/postgres-ci:9.6'
  end
end

desc 'Builds & pushes all docker images'
task :deploy do
  Rake::Task['deploy:latest'].invoke
end

namespace :deploy do
  desc 'Builds & pushes all images'
  task :all do
    Rake::Task['deploy:latest'].invoke
    Rake::Task['deploy:postgres_9_6'].invoke
  end

  desc 'Builds & pushes latest image to the registry'
  task :latest do
    Rake::Task['build:latest'].invoke
    Rake::Task['push:latest'].invoke
  end
  
  
  desc 'Builds & pushes postgres 9.6 image to the registry'
  task :postgres_9_6 do
    Rake::Task['build:postgres_9_6'].invoke
    Rake::Task['push:postgres_9_6'].invoke
  end
end
