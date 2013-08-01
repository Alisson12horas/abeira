class PagesController < ApplicationController
  def oquee
  end

  def admin
  end

  def equipe
  end

  def fotos
  end

  def contato
  end

  def enviar_email
    email = params[:email]
    nome = params[:nome]
    website = params[:website]
    mensagem = params[:mensagem]
    Pony.mail(:subject => "Contato do Site" ,:from => 'contatoabeira@gmail.com', :to => 'ini.ebone@gmail.com', :html_body => "<h1>Contato do Site</h1><p>#{mensagem}</p><br>Enviado por #{nome}<br>#{email}<br>#{website}.", :body => "<h1>Contato do Site</h1><p>#{mensagem}</p><br>Enviado por #{nome}<br>#{email}<br>#{website}.") 
  end
end
