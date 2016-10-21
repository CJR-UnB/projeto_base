# Projeto Base

[![Code Climate](https://codeclimate.com/github/unbcjr/projeto_base/badges/gpa.svg)](https://codeclimate.com/github/unbcjr/projeto_base)&nbsp;&nbsp;&nbsp;[![GitHub issues](https://img.shields.io/github/issues/unbcjr/projeto_base.svg)](https://github.com/unbcjr/projeto_base/issues)

Este é o projeto base para o desenvolvimento de sistemas utilizando o Rails da Empresa Júnior de Computação - CJR.

Ele é baseado no Rails 4 e Ruby 2.3.1.

## Gems de Aplicação

* [SASS](https://github.com/rails/sass-rails) para estilos SCSS
* [Slim](https://github.com/slim-template/slim) para as views HTML
* [Bootstrap](https://github.com/twbs/bootstrap-sass) como framework CSS
* [Responders](https://github.com/plataformatec/responders) para deixar os controllers mais limpos
* [Devise](http://github.com/plataformatec/devise) para autenticação básica de usuário
* [Cancancan](https://github.com/CanCanCommunity/cancancan) para autorização/permissões de perfis/usuários
* [Google Analytics Rails](https://github.com/bgarret/google-analytics-rails) para o suporte do Google Analytics

## Gems de Desenvolvimento

* [Puma](https://github.com/puma/puma) como servidor web padrão do Rails
* [Mailcatcher](https://github.com/sj26/mailcatcher) como servidor SMTP
* [Rubocop](https://github.com/bbatsov/rubocop) para reportar violações no estilo Ruby
* [Pry Rails](https://github.com/rweng/pry-rails) para explorar objetos interativamente no console
* [Brakeman](https://github.com/presidentbeef/brakeman) para checar a aplicação em busca de vulnerabilidades de segurança
* [Bundler Audit](https://github.com/rubysec/bundler-audit) para realizar scans no Gemfile em busca de dependências inseguras
* [Slim Lint](https://github.com/sds/slim-lint) para reportar violações no estilo Ruby nos templates `.slim`
* [SCSS Lint](https://github.com/brigade/scss-lint) para reportar violações de convenção de código SCSS
* [Web Console](https://github.com/rails/web-console) para um melhor debugging via console IRB no browser
* [Annotate](https://github.com/ctran/annotate_models) para gerar comentários nos models com os seus atributos
* [Rails ERD](https://github.com/voormedia/rails-erd) para gerar diagramas entidade realacionamento baseado nos models

## Gems de Testes

* [RSpec](https://github.com/rspec/rspec) para testes de unidade
* [Capybara](https://github.com/jnicklas/capybara) para testes de integração
* [Factory Girl](https://github.com/thoughtbot/factory_girl) para dados de teste
* [Faker](https://github.com/stympy/faker) para geração de dados aleatórios de teste

## Envio de Emails

#### Desenvolvimento

O envio de emails em desenvolvimento é feito através MailCatcher pela seguinte configuração, no arquivo `config/environments/development.rb`

```ruby
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
```

Os emails estarão disponíveis através da interface acessada no link [localhost:1080](http://localhost:1080)

#### Produção

No [Heroku](http://www.heroku.com), atribua valores às variáveis de ambientes `ENV[GMAIL_USERNAME]` e `ENV[GMAIL_PASSWORD]`.

```bash
$ heroku config:set GMAIL_USERNAME=email@gmail.com
$ heroku config:set GMAIL_PASSWORD=senha_do_email
```

Descomente a linha abaixo no arquivo `config/environments/production.rb` e insira o link para a aplicação no Heroku.

```ruby
config.action_mailer.default_url_options = { host: '[LINK_DO_HEROKU]' }
```

## Iniciando o Projeto

1. Clone a aplicação como novo projeto.

  ```bash
  $ git clone https://github.com/unbcjr/projeto_base.git [NOME_DO_NOVO_PROJETO]
  ```

2. Altere o nome da aplicação.

  ```bash
  $ rails g rename [NOME_DO_NOVO_PROJETO]
  ```

3. Crie a aplicação no GitHub da CJR e dê um push na master. Certifique-se que possui o remote.

  ```bash
  $ git remote remove origin
  $ git remote add origin https://github.com/unbcjr/[NOME_DO_PROJETO].git
  $ git push -u origin master
  ```

4. Execute o script para configurar a aplicação.

  ```bash
  $ bin/setup
  ```

5. Atualize o arquivo `README.md`.

  ```bash
  $ mv doc/README.md README.md
  $ git commit -am "Atualizando README.md"
  ```

## Implantação

#### Heroku

O sistema em Rails tem que ser hospedado no [Heroku](http://www.heroku.com) durante sua fase de desenvolvimento.

## Contribua

1. Dê um fork no projeto.
2. Configure-o na sua máquina utilizando o script `bin/setup`.
3. Tenha certeza que os testes passaram, utilize `rubocop` e `rspec`.
4. Faça suas alterações. Adicione testes para as alterações que julgar necessárias.
5. Certifique-se que os testes passem.
6. Mencione suas alterações na seção "Não lançado" em `CHANGELOG.md`.
7. Dê um push do seu fork e [faça um pull request](https://help.github.com/articles/creating-a-pull-request/).

ou

1. Abra uma [issue](https://github.com/unbcjr/projeto_base/issues/new).
2. Detalhe bem a alteração que deseja.
3. Caso se sinta a vontade, crie um branch e desenvolva.
4. Em seguida faça um [faça um pull request](https://help.github.com/articles/creating-a-pull-request/).
