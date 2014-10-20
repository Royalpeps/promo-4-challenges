require 'nokogiri'
require 'open-uri'
response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise")
puts response.inspect



doc = Nokogiri::HTML(File.open('marmiton.html'))

doc.search('.m_contenu_resultat').each do |element|
  puts "#{element.search('.m_titre_resultat > a').inner_text}"
  puts "Rating : #{element.search('.m_recette_note1').count} / 5} #{element.search(".m_recette_nb_votes").inner_text}"
  puts "Durée : #{element.search(".m_prep_time").inner_text}"
  puts "Description : #{element.search(".m_texte_resultat").inner_text[0..149]}..."
end