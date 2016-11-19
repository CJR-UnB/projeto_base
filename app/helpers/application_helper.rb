module ApplicationHelper

  def sim_ou_nao(option)
    if option.eql? 0 or option.nil?
      content_tag(:span, 'Não', class: 'label label-danger')
    else
      content_tag(:span, 'Sim', class: 'label label-success')
    end
  end

end
