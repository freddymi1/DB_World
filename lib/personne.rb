require 'mysql'

class World

    def initialize(dbhost, dbname, dbuser, dbpass)
        @dbhost = dbhost
        @dbname = dbname
        @dbuser = dbuser
        @dbpass = dbpass
    end

    #Connexion au base de donnee MYSQL

    def connexionDB
        puts "Connexion au base de donnee MySQL ...."
        mysql = Mysql.connect(@dbhost, @dbname, @dbuser, @dbpass)
        puts "Connexion bien etablit ....."
        mysql.close
    end

    #Enregistrement des personnes
    def enregistrement
        puts "Enregistrement des personnes"
        mysql = connexionDB
        query = mysql.prepare("INSERT INTO personnes(nom, prenom, age, taille, poids) VALUES (?, ?, ?, ?. ?")
        query.execut()

        print "Enregistrement effectuer. Voulez-vous enregistrer encore? [O/n]: "
        rep = gets.chomp.to_s
        if rep == "O" || rep == "o"
            db = World.new('localhost', 'World', 'root', '')
            db.lancement
        elsif rep == "N" || rep == "n"
            affichage
        end

        mysql.close
    end

    #Afficher les listes des personnes dans le table personnes
    def affichage
        puts "LISTES DES PERSONNES"
        mysql = connexionDB
        query = mysql.query("SELECT * FROM personnes")
        query.each do |id, nom, prenom, age, taille, poids|
            puts "\tId\t|\t\t\tNOM\t\t\t|\t\t\tPRENOM\t\t\t|\t\tAGE\t\t|\t\tTAILLE\t\t|\t\tPOIDS\t\t|\n"
            puts "\t#{id}\t|\t\t#{nom}\t\t|\t\t#{prenom}\t\t|\t\t#{age} ans\t\t|\t\t#{taille} cm\t\t|\t\t#{poids} kg\t\t|\n"
        end
        mysql.close()
    end

    # Modification du personnes
    def modification
        puts "Modification du personne"
        mysql = connexionDB
        puts "Entrer l'ID du personne a modifier #{id}"
        query = mysql.prepare("UPDATE personnes SET nom=?, prenom=?, age=?, taille=?, poids=? WHERE id=?")
        query.execut(id)
        puts "Modofication bien effectuez!"
        
        mysql.close()
    end

    #Lancement du programme
    def lancement
        puts "\t\t\t----------------------------------------------------------"
        puts "\t\t\t|1 - Enregistrement |  2 - Affichage |  3 - Modification |"
        puts "\t\t\t----------------------------------------------------------"
        print "Entrer votre choix: "
        choix = gets.chomp.to_i

        case choix
        when 1
            enregistrement
        when 2
            affichage
        when 3
            modification
        else
            print "Choix innexistant. Voulez-vous reessayez? [O/n]: "
            rep = gets.chomp.to_s
            if rep == "O" || rep == "o"
                db = World.new('localhost', 'World', 'root', '')
                db.lancement
            elsif rep == "N" || rep == "n"
                puts "Bye..."
                exit
            end
        end
    end


end
=begin
db = World.new('localhost', 'World', 'root', '')
db.lancement
=end