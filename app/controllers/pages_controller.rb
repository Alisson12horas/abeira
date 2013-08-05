class PagesController < ApplicationController
  def oquee
  end

  def admin
    @users = User.all
  end

  def equipe
  end

  def fotos
  end

  def contato
  end

  def enviar_email
    nome = params[:nome]
    email = params[:email]
    website = params[:website]
    mensagem = params[:mensagem]
    Pony.mail(:subject => "Contato do Site" ,:from => 'contatoabeira@gmail.com', :to => 'contatoabeira@gmail.com, ini.ebone@gmail.com', :html_body => "<h1>Contato do Site</h1><p>#{mensagem}</p><br>Enviado por <strong>#{nome}</strong><br><strong>E-mail: </strong>#{email}<br><strong>Website:</strong> #{website}.", :body => "<h1>Contato do Site</h1><p>#{mensagem}</p><br>Enviado por <strong>#{nome}</strong><br><strong>E-mail: </strong>#{email}<br><strong>Website:</strong> #{website}.") 
  end
end
