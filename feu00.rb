# Créez un programme qui affiche un rectangle dans le terminal.

# LES FONCTIONS
# -------------
def is_numeric char
  char.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) != nil
end

def line_drawer(longueur, deb = 0)
  line = ''
  case deb
  when 0
    (1..longueur.to_i).each do |i|
      if i != 1 && i != longueur.to_i
        line += '-'
      else
        line += 'o'
      end
    end
  when 1
    (1..longueur.to_i).each do |i|
      if i != 1 && i != longueur.to_i
        line += ' '
      else
        line += '|'
      end
    end
  end
  puts line
end

def draw_rectangle(column, row)
  (1..row).each do |i|
    if i != 1 && i != row.to_i
      line_drawer(column, 1)
    else
      line_drawer(column, 0)
    end
  end
end
# -------------


# LES ERREURS
# -------------
if ARGV.length != 2
  puts 'erreur.'
  exit
end

(0..(ARGV.length - 1)).each do |i|
  unless is_numeric(ARGV[i])
    puts 'erreur.'
    exit
  end
  if ARGV[i].to_i <= 0
    puts 'erreur.'
    exit
  end
end
# -------------


# LES DATA
# -------------
row = ARGV[1].to_i
column = ARGV[0].to_i
# -------------

# LA RESOLUTION
# -------------
# -------------


# RESULTAT(S)
# -------------
draw_rectangle(column, row)
# -------------