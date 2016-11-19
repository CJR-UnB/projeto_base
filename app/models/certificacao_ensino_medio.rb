ActiveRecord::Base.pluralize_table_names = false

class CertificacaoEnsinoMedio < ActiveRecord::Base
  belongs_to :unidade_certificacao, foreign_key: :id_unidade_certificacao
  # belongs_to :candidato
end