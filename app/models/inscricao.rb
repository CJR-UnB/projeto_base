ActiveRecord::Base.pluralize_table_names = false

class Inscricao < ActiveRecord::Base
  self.per_page = 10
  belongs_to :candidato, foreign_key: :id_candidato
  # belongs_to :municipio
  # belongs_to :unidade_federativa
end