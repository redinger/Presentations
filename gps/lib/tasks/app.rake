namespace :app do
  desc 'Resets migrations and loads fixtures and seed data'
  task :setup => ['db:migrate:reset', 'db:fixtures:load', 'db:populate']
end
