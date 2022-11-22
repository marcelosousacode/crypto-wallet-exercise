namespace :dev do
  desc "COnfigura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Apagando DB...")
      spinner.auto_spin
        %x(rails db:drop)
      spinner.success("(Concluido com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Criando DB...")
      spinner.auto_spin
        %x(rails db:create)
      spinner.success("(Concluido com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Migrando DB...")
      spinner.auto_spin
        %x(rails db:migrate)
      spinner.success("(Concluido com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Populando DB...")
      spinner.auto_spin
        %x(rails db:seed)
      spinner.success("(Concluido com sucesso!)")  

    else
      puts "Você não está em ambiente de desenvolvimento.^"
    end
  end

end
