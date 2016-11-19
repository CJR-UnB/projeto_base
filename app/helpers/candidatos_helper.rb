module CandidatosHelper

  TP_SEXO = {"M" => "Masculino", "F" => "Feminino"}

  def tp_sexo_detailed(tp_sexo); TP_SEXO[tp_sexo]; end

  NACIONALIDADE = { 1 => "Brasileiro (a)", 2 => "Brasileiro (a) Naturalizado (a)",
                    3 => "Estrangeiro (a)", 4 => "Brasileiro (a) Nato (a), nascido (a) no exterior"}

  def nacionalidade_detailed(nacionalidade); NACIONALIDADE[nacionalidade]; end

  ST_CONCLUSAO = { 1 => "Já conclui o ensino médio", 2 => "Estou cursando e concluirei o Ensino Médio em 2013", 
                   3 => "Estou cursando e concluirei o Ensino Médio após 2013", 4 => "Não concluí e não estou cursando o Ensino Médio" }

  def st_conclusao_detailed(st_conclusao); ST_CONCLUSAO[st_conclusao]; end

  TP_ESCOLA = { 1 => "Pública", 2 => "Privada" }

  def tp_escola_detailed(tp_escola); TP_ESCOLA[tp_escola]; end

  IN_TP_ENSINO = { 1 => "Ensino Regular", 2 => "Ensino de Jovens e Adultos", 4 => "Ensino Especial" }

  def in_tp_ensino_detailed(in_tp_ensino); IN_TP_ENSINO[in_tp_ensino]; end

  TP_ESTADO_CIVIL = { 0 => "Solteiro (a)", 1 => "Casado(a)/Mora com um(a) companheiro(a)", 
                      2 => "Divorciado(a)/Desquitado(a)/Separado(a)", 3 => "Viúvo (a)" }

  def tp_estado_civil_detailed(tp_estado_civil); TP_ESTADO_CIVIL[tp_estado_civil]; end

  TP_COR_RACA = { 0 => "Não declarado", 1 => "Branca", 2 => "Preta", 3 => "Parda", 4 => "Amarela", 5 => "Indígena" }

  def tp_cor_raca_detailed(tp_cor_raca); TP_COR_RACA[tp_cor_raca]; end

  def entidade_certificadora(candidato)
    if candidato.in_certificado.nil? or candidato.in_certificado == 0
      content_tag(:span, 'Não informado.')
    else
      content_tag(:span, candidato.certificacao_ensino_medio.unidade_certificacao.no_entidade_certificacao)
    end
  end

  PRESENCA = { 0 => "Faltou à prova", 1 => "Presente na prova", 2 => "Eliminado da prova" }

  def presenca_prova(presenca); PRESENCA[presenca]; end

  PROVA_CN = { 199 => "Azul", 200 => "Amarelo", 201 => "Branco", 202 => "Rosa", 216 => "Branco (Adaptada)" }
  PROVA_CH = { 195 => "Azul", 196 => "Amarelo", 197 => "Branco", 198 => "Rosa", 215 => "Branco (Adaptada)" }
  PROVA_LC = { 205 => "Azul", 203 => "Amarelo", 204 => "Cinza",  202 => "Rosa", 217 => "Cinza (Adaptada)", 213 => "Cinza (Reaplicação)" }
  PROVA_MT = { 209 => "Azul", 207 => "Amarelo", 208 => "Cinza",  210 => "Rosa", 218 => "Cinza (Adaptada)", 214 => "Cinza (Reaplicação)" }

  def prova_cn(prova_cn); PROVA_CN[prova_cn]; end
  def prova_ch(prova_ch); PROVA_CH[prova_ch]; end
  def prova_lc(prova_lc); PROVA_LC[prova_lc]; end
  def prova_mt(prova_mt); PROVA_MT[prova_mt]; end

  def prog_bar_cn(nota_cn)
    progress_bar(nota_cn/876.4, label: true, style: 'min-width: 100px; margin: 0') unless nota_cn.nil?
  end

  def prog_bar_ch(nota_ch)
    progress_bar(nota_ch/862.1, label: true, style: 'min-width: 100px; margin: 0') unless nota_ch.nil?
  end

  def prog_bar_lc(nota_lc)
    progress_bar(nota_lc/814.2, label: true, style: 'min-width: 100px; margin: 0') unless nota_lc.nil?
  end

  def prog_bar_mt(nota_mt)
    progress_bar(nota_mt/973.6, label: true, style: 'min-width: 100px; margin: 0') unless nota_mt.nil?
  end

  def prog_comp(nota_comp)
    progress_bar(nota_comp/200.0, label: true, style: 'min-width: 100px; margin: 0') 
  end

  def prog_red(nota_red)
    progress_bar(nota_red/1000.0, label: true, style: 'min-width: 100px; margin: 0') 
  end

end