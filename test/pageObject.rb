class ConsultarMoeda
    include HTTParty

    attr_accessor :response

    def consultar (idmoeda)
    retorno = self.class.get("https://api.mercadolibre.com/currencies/#{idmoeda}")

    self.response = retorno['response']
    end
end