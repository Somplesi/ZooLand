//
//  Datas.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 28/09/2020.
//

import Foundation

class Datas {
    
    var mammiferes: [Animal] = [
        Animal(name: "Maki Catta", desc: "Le Lémur catta (Lemur catta) ou Maki catta est un primate lemuriforme de la famille des Lemuridae. Avec sa longue queue annelée de blanc et de noir, il est le plus connu et le plus emblématique des lémuriens. Comme tous ces derniers, il est endémique de Madagascar et évolue dans les fourrés épineux et les forêts sèches du sud de l'île. Le lémur catta est omnivore et suit un rythme d'activité diurne. Il se déplace dans les arbres aussi facilement que sur le sol et c'est le plus terrestre des lémuriens. Il vit en groupes pouvant compter jusqu'à trente individus et dirigés par une femelle dominante. Le lémur catta est le plus ancien des lémuriens de Madagascar décrits par les Européens et le seul représentant du genre Lemur qui est à l'origine du nom général donné à ce groupe de primates.Bien qu'il s'adapte facilement à la vie en captivité et soit présent dans bon nombre de zoos de la planète, le lémur catta est une espèce dont la survie à l'état sauvage est sévérement compromise et il fait partie des 25 primates les plus menacés au monde.", origine: "Madagascar", status: .danger, imageString: "maki"),
        Animal(name: "Capucin brun", desc: "Le Capucin brun (Sapajus apella) est une espèce de primates d'Amérique du Sud relativement communs au Brésil. Son alimentation est constituée de fruits, de germes, de feuilles et d'insectes.", origine: "Bresil", status: .mineure, imageString: "capu"),
        Animal(name: "Fennec", desc: "Le fennec (Vulpes zerda)1, nommé aussi renard des sables ou renard des sables du Sahara2 est un petit renard (donc du genre Vulpes et de la famille des canidés) qui vit dans le désert du Sahara et la péninsule du Sinaï. Avec ses oreilles caractéristiques, il est la plus petite espèce de sa famille. Sa fourrure, ses oreilles et sa fonction rénale sont adaptées aux conditions physiques du désert : températures extrêmes et pénurie d’eau. Ses oreilles lui servent également de système de ventilation et de refroidissement du sang. Elles l'aident à résister aux températures élevées et au climat extrême du désert.", origine: "Algerie", status: .mineure, imageString: "fennec"),
        Animal(name: "Ocelot", desc: "L’Ocelot (Leopardus pardalis ou anciennement Felis pardalis) est un félin qui vit en Amérique du Sud et en Amérique centrale. On le rencontre aussi dans le sud-est du Texas, aux États-Unis. En France, la présence du félin à l'état sauvage se limite à la Guyane. Il vit dans différents biotopes : marais, palétuviers, prairies, buissons, forêts tropicales. Il chasse la nuit au sol et parfois dans les arbres. Il est appelé Cunaguaro au Venezuela et Jaguatirica au Brésil.", origine: "Surinam", status: .mineure, imageString: "ocelot"),
        Animal(name: "Serval", desc: "Le serval (Leptailurus serval) est une espèce de félins de la sous-famille des félinés. Le serval est la seule espèce du genre Leptailurus. Des analyses d'ADN ont montré que le serval descend du même ancêtre que le lion, mais qu'il constitue une lignée unique n'ayant pas de rapports proches avec d'autres espèces de félins, bien qu'il présente quelques points communs avec le guépard. Cependant, d'autres études indiquent que le serval est proche du chat doré africain ainsi que du caracal. \nSa longueur est d’environ 85 à 112 cm, et celle de sa queue de l’ordre de 30 à 50 cm. Il mesure de 54 à 66 cm au garrot. Son poids est de 9 à 16 kg chez les femelles, de 12 à 26 kg chez les mâles. Il a de longues pattes et une tête élancée ; ses oreilles sont à la fois longues et larges en comparaison avec sa tête et ont la particularité d'être arrondies. Les oreilles du serval et son long cou lui permettent d'entendre et de voir au-dessus des hautes herbes de la savane.\nL'aspect de sa fourrure est variable : bien que la plupart des servals arborent des points ou taches à la manière des guépards, certains n'ont pour marques apparentes que quelques taches au-dessus des yeux et des anneaux autour de la queue.", origine: "Tanzanie", status: .mineure, imageString: "serval"),
        Animal(name: "Éléphant", desc: "Les éléphants sont des mammifères proboscidiens de la famille des Éléphantidés. Ils correspondent aujourd'hui à trois espèces réparties en deux genres distincts. L'Éléphant de savane d'Afrique et l'Éléphant de forêt d'Afrique, autrefois regroupés sous la même espèce d'« Éléphant d'Afrique », appartiennent au genre Loxodonta, tandis que l'Éléphant d'Asie, anciennement appelé « éléphant indien », appartient au genre Elephas. Ils se différencient par certaines caractéristiques anatomiques, les éléphants d'Asie étant en général plus petits avec des oreilles plus petites, ou encore une différence du bout de la trompe. Ces espèces survivantes font localement l'objet de programmes ou de projets de réintroduction et de protection.\nLe mot français « éléphant » vient du mot latin elephantus1 qui tire son origine du grec ἐλέφας signifiant « ivoire » ou « éléphant ».\nL'éléphant apparait dans de nombreuses cultures. Il est symbole de sagesse dans la culture asiatique, connu pour sa mémoire et son intelligence, qui est comparée à celle des cétacés2 et hominidés3. Aristote avait dit que l'éléphant est « la bête qui dépasse toutes les autres par l'intelligence et l'esprit »4.", origine: "Congo", status: .mineure, imageString: "elephant"),
        Animal(name: "Tigre", desc: "Le Tigre (Panthera tigris) est une espèce de mammifère carnivore de la famille des félidés (Felidae) du genre Panthera. Aisément reconnaissable à sa fourrure rousse rayée de noir, il est le plus grand félin sauvage et l'un des plus grands carnivores terrestres. L'espèce est divisée en neuf sous-espèces présentant des différences mineures de taille ou de comportement. Superprédateur, il chasse principalement les cerfs et les sangliers, bien qu'il puisse s'attaquer à des proies de taille plus importante comme les buffles. Jusqu'au xixe siècle, le tigre était réputé mangeur d'hommes. La structure sociale des tigres en fait un animal solitaire ; le mâle possède un territoire qui englobe les domaines de plusieurs femelles et ne participe pas à l'éducation des petits.\nTrès polyvalent en termes d'habitat, le tigre se rencontre dans toute l'Asie, bien que son aire de répartition se soit fortement réduite. L'espèce est considérée comme en danger par l'Union internationale pour la conservation de la nature et est protégée sur l'ensemble des pays où elle vit. Chassées jusqu'au milieu du xxe siècle, les populations de tigres ont fortement décru, passant d'un effectif estimé à 100 000 individus en 1900 à environ 3 500 tigres, la majorité vivant en Inde. La réduction de son habitat et le braconnage alimentant la médecine traditionnelle chinoise sont les principales menaces pesant sur l'espèce.\n\n« Roi des animaux » et signe zodiacal chinois, le tigre est également très présent dans la mythologie hindoue, servant de monture à Durga. Figure emblématique représentant la force et la férocité, ce félin est dépeint dans de nombreux tableaux, et a figuré dans de nombreuses œuvres musicales et littéraires : Shere Khan du Livre de la jungle de Rudyard Kipling ou encore Hobbes dans la bande dessinée Calvin et Hobbes.", origine: "Chine", status: .danger, imageString: "tigre"),
        Animal(name: "Loutre d'Europe", desc: "La Loutre d'Europe1 ou Loutre européenne (Lutra lutra)2, souvent qualifiée de loutre commune dans les pays d'Europe où elle est présente, est une espèce de mammifères carnivores semi-aquatiques et principalement nocturnes, de la famille des Mustélidés (sous-famille Lutrinés). Elle est l'une des trois espèces de loutres se rattachant au genre Lutra. En France, on ne trouve que cette seule espèce de loutre. Autrefois présente sur tout le territoire, elle a disparu au xixe-xxe siècle d'une grande partie de son aire naturelle de répartition en raison de la chasse qu'on lui a faite, puis de la pollution. En effet, en tête de réseau trophique, la loutre bioaccumule de nombreux polluants bioconcentrés tout au long de la chaine alimentaire, notamment les polluants non dégradables que sont les métaux lourds et métalloïdes, et divers polluants organiques persistants peu dégradables tels que des organochlorés et des organophosphorés d'origine agricole (pesticides) ou industrielle", origine: "France", status: .mineure, imageString: "loutre"),
    ]
    
    var reptiles: [Animal] = [
        Animal(name: "Alligator", desc: "Alligator mississippiensis, l'Alligator d'Amérique ou cocodri(e) ou crocodril en français cadien1, est une espèce de crocodiliens de la famille des Alligatoridae2 et de la sous-famille des Alligatorinae.", origine: "Mississipi", status: .mineure, imageString: "alligator"),
        Animal(name: "Naja", desc: "Naja naja est une espèce de serpents de la famille des Elapidae1. En français, ce serpent est appelé cobra indien ou cobra à lunettes.", origine: "Inde", status: .mineure, imageString: "naja"),
        Animal(name: "Iguane vert", desc: "guana iguana est une espèce de sauriens de la famille des Iguanidae1. En français, elle est nommée Iguane vert ou Iguane commun.\nC'est une grande espèce de lézards arboricoles et herbivores du genre Iguana originaire d'Amérique du Sud et centrale. L'adulte mesure environ 1,5 m de la tête à la queue, et certains spécimens peuvent atteindre les 2 m et peser 5 kg, ce qui en fait le plus imposant des iguanes. Il prend diverses couleurs selon sa région d'origine, sa teinte pouvant prendre différents tons de vert, mais aussi être rosée, bleuâtre ou orangée. Il se caractérise également par les anneaux noirs visibles sur sa queue et sa crête d'épines dorsales. L'Iguane vert passe le plus clair de son temps dans les arbres, à se nourrir de feuillage. C'est un animal territorial qui se montre agressif envers les autres mâles, notamment en période de reproduction. Les femelles pondent une fois par an, et dès l'éclosion les jeunes sont livrés à eux-mêmes, souvent victimes de prédateurs comme le basilic. Ils atteignent leur maturité sexuelle à trois ans.\nL'Iguane vert a une aire de répartition très étendue qui va du Sud du Brésil et du Paraguay au Nord du Mexique, aux Îles Caraïbes. Il est également présent aux États-Unis où on trouve des populations issues du marronnage, notamment dans le sud de la Floride (dont l'archipel des Keys), à Hawaï et la vallée du Rio Grande au Texas, où il constitue une menace pour l'équilibre écologique local. En Amérique du Sud, l'Iguane vert est apprécié pour sa viande et pour ses œufs, et est chassé ou élevé pour fournir les marchés locaux, mais aussi pour approvisionner le marché des animaux de compagnie. Il est en effet de plus en plus couramment élevé en captivité en tant que nouvel animal de compagnie du fait de son tempérament calme et de ses couleurs vives, bien qu'il exige des soins particuliers et suffisamment d'espace. Les captures d'animaux sauvages ont fait chuter les effectifs, même si l'espèce n'est pas encore menacée. En effet les Indiens apprécient beaucoup sa chair ce qui a un impact sur les populations.", origine: "Mexique", status: .mineure, imageString: "iguane"),
        Animal(name: "Tortue d'Hermann", desc: "Testudo hermanni, la Tortue d'Hermann, est une espèce de tortues de la famille des Testudinidae.\nEn France, elle est également appelée Tortue des Maures.\nCette espèce est nommée en l'honneur du botaniste et médecin Jean Hermann (1738-1800).", origine: "Toulon", status: .mineure, imageString: "tortue"),
    ]
    
    var oiseaux: [Animal] = [
        Animal(name: "Pygargue à tête blanche", desc: "Le Pygargue à tête blanche (Haliaeetus leucocephalus) est une espèce de rapaces qui vit en Amérique du Nord. Malgré son nom anglais de Bald Eagle (« aigle chauve ») ou sa dénomination populaire d'« aigle à tête blanche », il ne s'agit pas d'un aigle du genre Aquila mais d'un pygargue du genre Haliaeetus : il s'en distingue par son régime alimentaire, essentiellement composé de poissons, mais aussi par son bec massif et par le fait que ses pattes ne sont pas recouvertes de plumes jusqu'aux serres, l'un des caractères propres aux vrais aigles. Alors que l'aigle vit dans les massifs forestiers et les montagnes, le pygargue préfère les lacs, les rivières et les zones côtières, où il peut trouver sa nourriture. À ce titre, il est parfois nommé « aigle de mer » ou « aigle pêcheur » américain. Subdivisé en deux sous-espèces, il se rencontre sur presque toute la superficie de l'Amérique du Nord, de l'Alaska au nord jusqu'au Mexique au sud tant sur la côte Atlantique que Pacifique. Emblème national des États-Unis, l'espèce a été un temps menacée dans ce pays au xxe siècle.", origine: "New York", status: .mineure, imageString: "eagle"),
        Animal(name: "Ara bleu", desc: "L'Ara bleu (Ara ararauna), également appelé Ara bleu et jaune ou Ara ararauna, est un grand perroquet du genre Ara facilement reconnaissable aux couleurs de son plumage.\nCet oiseau est protégé par la Convention de Washington (Annexe II) et l'arrêté ministériel du 15 mai 1986 listant les espèces d'oiseaux protégées de Guyane.", origine: "Amazonie", status: .danger, imageString: "ara"),
        Animal(name: "Cagou", desc: "Le Kagou huppé ou simplement Cagou (Rhynochetos jubatus) est une espèce d'oiseaux échassiers qui mesure environ 55 cm, de couleur grisâtre, aux longues plumes occipitales, au plumage blanchâtre orné de barres sur les ailes. Il est incapable de voler. C'est le seul représentant de la famille des Rhynochetidae et du genre Rhynochetos endémique de Nouvelle-Calédonie.", origine: "Nouvelle Calédonie", status: .danger, imageString: "cagou"),
        Animal(name: "Kiwi Austral", desc: "Le Kiwi austral (Apteryx australis) est une espèce d'oiseaux endémique de Nouvelle-Zélande. Son nom est un emprunt au terme māori kivi-kivi qui désigne cet oiseau[réf. nécessaire]. Les rats et les phalangers sont connus pour être des prédateurs de cet oiseau1.\nLe kiwi, de la taille d'une poule (environ 60 cm pour 2 à 3 kg), est doté d'ailes, réduites à des moignons (il est donc incapable de voler), d'un long bec, d'un plumage brunâtre et est dépourvu de queue. Les kiwis ont une vue médiocre, mais un odorat développé. Leurs narines sont situées à l'extrémité de leur long bec. Le kiwi reste caché le jour et sort la nuit chercher sa nourriture, des larves d'insectes qu'il trouve dans le sol grâce à son odorat. C'est un animal qui vit généralement en milieu forestier.\nLes kiwis vivent en couple, et ce pendant une trentaine d'années. La femelle est plus grosse que le mâle, et pond des œufs qui représentent environ 20 % de son poids. Proportionnellement, c'est le plus gros œuf du monde. C'est le mâle qui couve les œufs. L'incubation dure de 70 à 80 jours.", origine: "Nouvelle Zélande", status: .danger, imageString: "kiwi"),
    ]
    

    func all() -> [Animal] {
        var base = mammiferes
        base.append(contentsOf: reptiles)
        base.append(contentsOf: oiseaux)
        return base
    }
    
}
