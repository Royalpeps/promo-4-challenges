class Restaurant

  attr_reader :capacite
  attr_accessor :plat_du_jour, :nb_clients_ajd

  def initialize(capacite, plat_du_jour = "Filet mignon", nb_clients_ajd)
    @capacite = capacite
    @plat_du_jour = plat_du_jour
    @nb_clients_ajd = nb_clients_ajd
  end
end

Restaurant_italien = Restaurant.new(20, "Margharita", 12)
p Restaurant_italien

Restaurant_asiatique = Restaurant.new(25,"Nems",23)
p Restaurant_asiatique

Restaurant_francais = Restaurant.new(25, "Tartare", 23)
p Restaurant_francais