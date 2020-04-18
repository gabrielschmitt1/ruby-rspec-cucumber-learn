class Sessao < SitePrism::Section
    element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'
    element :medium, 'body > div.navbar-fixed > nav > div > ul > li:nth-child(5) > a'
    element :capybara, 'body > div.navbar-fixed > nav > div > ul > li:nth-child(3) > a'
end

class Pagina < SitePrism::Page
    set_url '/buscaelementos/botoes'
    section :navbar, Sessao, 'body > div.navbar-fixed > nav > div'
end