@matieres = ['Lipides', 'Glucides', 'Proteines']
@hamburger = ['38.4', '18.3', '36.3']
@calorie_norm = ['9', '4', '4']

hamburger = @matieres.zip(@hamburger).to_h
@calorie = @matieres.zip(@calorie_norm).to_h

@fin = 0

#puts hamburger
#puts @calorie

def weight_watchers(welshe)
	welshe.each{|k, v| @fin += @calorie[k].to_f * v.to_f}
	final = @fin.to_f.round
	puts " il y a #{final} calories dans ce plat. "
end
puts weight_watchers(hamburger)