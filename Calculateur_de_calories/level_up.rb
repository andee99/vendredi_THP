apport_nutritifs = ["Lipides", "Glucides", "Proteines"]
nourriture = ["Welsh", "Frites", "Biere"]

taux_welsh = [38.4, 18.3, 36.3]
taux_frites = [15, 41,3.4]
taux_biere = [0, 25, 4]
taux_normal = [9, 4, 4]

WELSH = apport_nutritifs.zip(taux_welsh).to_h
FRITES = apport_nutritifs.zip(taux_frites).to_h
BIERE = apport_nutritifs.zip(taux_biere).to_h

bouffe = [WELSH, FRITES, BIERE]
@normal = apport_nutritifs.zip(taux_normal).to_h

menu = nourriture.zip(bouffe).to_h

@resultat = 0

def calorie(sakafo)
	sakafo.each {|key,value| value.each{|key,value|  @resultat += @normal[key] * value} }
	calories_final = @resultat.to_f.round
	puts "il y a #{calories_final} calories dans le menu. "
end

calorie(menu)