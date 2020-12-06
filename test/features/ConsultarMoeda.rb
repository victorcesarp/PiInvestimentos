class ConsultarMoeda
    include HTTParty

    def consultar (idmoeda)
    self.class.get("https://api.mercadolibre.com/currencies/#{idmoeda}")

    end
end