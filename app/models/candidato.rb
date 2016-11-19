ActiveRecord::Base.pluralize_table_names = false

class Candidato < ActiveRecord::Base
  belongs_to :municipio, foreign_key: :cod_municipio_nascimento
  belongs_to :unidade_federativa, foreign_key: :cod_uf_nascimento
  belongs_to :necessidade_especial, foreign_key: :id_necessidade_especial
  belongs_to :atendimento_necessidade_especial, foreign_key: :id_atendimento_necessidade_especial
  belongs_to :certificacao_ensino_medio, foreign_key: :id_certificacao_ensino_medio
  belongs_to :prova_objetiva, foreign_key: :id_prova_objetiva
  belongs_to :redacao, foreign_key: :id_redacao
end
