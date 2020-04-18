# Pegando todos os arquivos que terminem com _page.rb e colocando em uma variavel file e depois requerindo ela
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects
    def home
        # Verifica se foi instanciada, caso nao esteja, instacie
        home ||= AjaxPage.new 
    end
end

