taux_welsh = [38.4, 18.3, 36.3]
taux_frites = [15, 41, 3.4]
taux_biere = [0, 25, 4]

@taux_normal = [9, 4, 4]

@apport_nutritif = ['Lipides', 'Glucides', 'Proteines']

menu = ['welsh', 'frites', 'biere']

prix_ensemble = [{:price => 15}, {:price => 4}, {:price => 5}]
prix = menu.zip(prix_ensemble).to_h
@prix = Hash.new()
@prix['prix'] = prix

welsh = @apport_nutritif.zip(taux_welsh).to_h
frites = @apport_nutritif.zip(taux_frites).to_h
biere = @apport_nutritif.zip(taux_biere).to_h

bouffe = [welsh, frites, biere]

@menu = menu.zip(bouffe).to_h

@menu[0] = @prix

@resultat = 0

def meal_price(nourriture)
	nourriture[0]['prix'].each{|x, y|  @resultat += y[:price]}
	prix_total = @resultat.to_f.round
	puts "ça va couter #{prix_total} euros. "
end

meal_price(@menu)