//
//  Constants.swift
//  DoctorNearby
//
//  Created by Vince Zhang on 2015-09-25.
//  Copyright © 2015 AkhalTech. All rights reserved.
//

import Foundation

class City: NSObject {
    
    class func names(province: String) -> Array <String> {
        if province == "Alberta" {
            return ["ALL"]
        }else if province == "British Columbia" {
            return ["ALL"]
        }else if province == "Manitoba" {
            return ["ALL"]
        }else if province == "New Brunswick" {
            return ["ALL"]
        }else if province == "Newfoundland and Labrador" {
            return ["ALL"]
        }else if province == "Nova Scotia" {
            return ["ALL"]
        }else if province == "Northwest Territories" {
            return ["ALL"]
        }else if province == "Nunavut" {
            return ["ALL"]
        }else if province == "Ontario" {
            return ontarioNames
        }else if province == "Prince Edward Island" {
            return ["ALL"]
        }else if province == "Quebec" {
            return ["ALL"]
        }else if province == "Saskatchewan" {
            return ["ALL"]
        }else if province == "Yukon" {
            return ["ALL"]
        }else {
            return ["ALL"]
        }
    }
    
    static let ontarioNames = [
        "ALL",
        "Acton",
        "Addison",
        "Agincourt",
        "Ailsa Craig",
        "Ajax",
        "Akwesasne",
        "Alban",
        "Alberton",
        "Aldershot",
        "Alexandria",
        "Alfred",
        "Algoma Mills",
        "Allenford",
        "Alliston",
        "Alma",
        "Almonte",
        "Alton",
        "Alvinston",
        "Amaranth",
        "Ameliasburgh",
        "Amherst Island",
        "Amherstburg",
        "Amherstview",
        "Ancaster",
        "Angus",
        "Annan",
        "Ansonville",
        "Appin",
        "Apple Hill",
        "Apsley",
        "Arden",
        "Ardoch",
        "Ariss",
        "Arkona",
        "Armstrong",
        "Arnprior",
        "Arnstein",
        "Arthur",
        "Arva",
        "Ashburn",
        "Ashton",
        "Asphodel-Norwood",
        "Astorville",
        "Astra",
        "Athens",
        "Atikokan",
        "Attawapiskat",
        "Atwood",
        "Auburn",
        "Aurora",
        "Avonmore",
        "Aweres Township",
        "Aylmer",
        "Ayr",
        "Ayton",
        "Azilda",
        "Baden",
        "Badjeros",
        "Bailieboro",
        "Bainsville",
        "Bala",
        "Balderson",
        "Baldwin",
        "Ballainafad",
        "Balmertown",
        "Baltimore",
        "Bancroft",
        "Barrie",
        "Barriefield",
        "Barrys Bay",
        "Bath",
        "Battersea",
        "Bay Ridges",
        "Bayfield",
        "Baysville",
        "Beachburg",
        "Beachville",
        "Beamsville",
        "Bear Island",
        "Beardmore",
        "Beaverton",
        "Beeton",
        "Belfountain",
        "Belgrave",
        "Bell Ewart",
        "Belle River",
        "Belle Vallee",
        "Belleville",
        "Bells Corners",
        "Belmont",
        "Belwood",
        "Berkeley",
        "Berwick",
        "Bethany",
        "Bewdley",
        "Big Trout Lake",
        "Binbrook",
        "Blackburn Hamlet",
        "Blackstock",
        "Blenheim",
        "Blezard Valley",
        "Blind River",
        "Bloomfield",
        "Blossom Park",
        "Blue Mountains",
        "Bluevale",
        "Blyth",
        "Bobcaygeon",
        "Bognor",
        "Bolton",
        "Bond Head",
        "Bonfield",
        "Borden",
        "Bornholm",
        "Bothwell",
        "Bourget",
        "Bowmanville",
        "Bracebridge",
        "Bradford",
        "Braeside",
        "Bramalea",
        "Brampton",
        "Branchton",
        "Brantford",
        "Brechin",
        "Breslau",
        "Bridgenorth",
        "Brigden",
        "Bright",
        "Brighton",
        "Brights Grove",
        "Brinston",
        "Brockville",
        "Bronte",
        "Brooklin",
        "Brougham",
        "Brownsville",
        "Bruce Mines",
        "Brucefield",
        "Brunner",
        "Brussels",
        "Buckhorn",
        "Burford",
        "Burgessville",
        "Burks Falls",
        "Burleigh Falls",
        "Burlington",
        "Burnstown",
        "Burwash",
        "Cache Bay",
        "Caesarea",
        "Caistor Centre",
        "Calabogie",
        "Caledon",
        "Caledon East",
        "Caledon Village",
        "Caledonia",
        "Callander",
        "Calstock",
        "Cambridge",
        "Camden East",
        "Cameron",
        "Camlachie",
        "Campbellcroft",
        "Campbellford",
        "Campbellville",
        "Canfield",
        "Cannifton",
        "Cannington",
        "Capreol",
        "Caramat",
        "Cardiff",
        "Cardinal",
        "Cardinal Heights",
        "Cargill",
        "Carleton Place",
        "Carlisle",
        "Carlsbad Springs",
        "Carnarvon",
        "Carp",
        "Carrying Place",
        "Casselman",
        "Castleton",
        "Cat Lake",
        "Cavan",
        "Cavan Monaghan",
        "Cayuga",
        "Cedar Point",
        "Cedar Springs",
        "Cedar Valley",
        "Centralia",
        "Centreville",
        "Chaffeys Lock",
        "Chalk River",
        "Chapleau",
        "Charing Cross",
        "Charlton",
        "Chatham",
        "Chatsworth",
        "Chelmsford",
        "Cheltenham",
        "Chepstow",
        "Cherry Valley",
        "Chesley",
        "Chesterville",
        "Chippawa",
        "Christian Island",
        "Churchill",
        "Chute-a-blondeau",
        "Claremont",
        "Clarence Creek",
        "Clarendon",
        "Clarington",
        "Clarksburg",
        "Clarkson",
        "Clayton",
        "Clearwater",
        "Clifford",
        "Clinton",
        "Cloyne",
        "Coatsworth",
        "Cobalt",
        "Cobden",
        "Coboconk",
        "Cobourg",
        "Cochenour",
        "Cochrane",
        "Codrington",
        "Coe Hill",
        "Colborne",
        "Colchester",
        "Coldstream",
        "Coldwater",
        "Colgan",
        "Collingwood",
        "Collins Bay",
        "Comber",
        "Combermere",
        "Commanda",
        "Concord",
        "Conestogo",
        "Coniston",
        "Conn",
        "Connaught",
        "Consecon",
        "Constance Bay",
        "Cookstown",
        "Cooksville",
        "Cooper",
        "Copetown",
        "Copper Cliff",
        "Corbeil",
        "Corbyville",
        "Cornwall",
        "Corunna",
        "Cottam",
        "Courtice",
        "Courtland",
        "Courtright",
        "Craigleith",
        "Crediton",
        "Creemore",
        "Creighton Mine",
        "Croton",
        "Crysler",
        "Crystal Beach",
        "Crystal Falls",
        "Culter",
        "Cumberland",
        "Cumberland Beach",
        "Curran",
        "Curve Lake",
        "Dacre",
        "Dalkeith",
        "Dashwood",
        "Deep River",
        "Delaware",
        "Delhi",
        "Delta",
        "Demorestville",
        "Denbigh",
        "Denfield",
        "Desbarats",
        "Desboro",
        "Deseronto",
        "Devlin",
        "Dobbinton",
        "Don Mills",
        "Dorchester",
        "Dorset",
        "Douglas",
        "Douro",
        "Douro-Dummer",
        "Dover Centre",
        "Dowling",
        "Downsview",
        "Drayton",
        "Dresden",
        "Drumbo",
        "Dryden",
        "Duart",
        "Dunchurch",
        "Dundalk",
        "Dundas",
        "Dungannon",
        "Dunnville",
        "Dunrobin",
        "Dunsford",
        "Duntroon",
        "Dunvegan",
        "Durham",
        "Dutton",
        "Dwight",
        "Dymond",
        "Eagle Lake",
        "Eagle River",
        "Ear Falls",
        "Earlton",
        "East Garafraxa",
        "East Gwillimbury",
        "East York",
        "Eastview",
        "Echo Bay",
        "Eden",
        "Eden Mills",
        "Edwards",
        "Eganville",
        "Egbert",
        "Egmondville",
        "Eldee",
        "Eldorado",
        "Elgin",
        "Elginburg",
        "Elizabethtown",
        "Elizabethtown Township",
        "Elk Lake",
        "Elliot Lake",
        "Elmira",
        "Elmvale",
        "Elmwood",
        "Elora",
        "Elphin",
        "Embro",
        "Embrun",
        "Emeryville",
        "Emo",
        "Emsdale",
        "Englehart",
        "Ennismore",
        "Enterprise",
        "Erieau",
        "Erin",
        "Erinsville",
        "Espanola",
        "Essex",
        "Etobicoke",
        "Everett",
        "Exeter",
        "Falconbridge",
        "Fallbrook",
        "Fauquier",
        "Fenelon Falls",
        "Fenwick",
        "Fergus",
        "Fernleigh",
        "Feversham",
        "Field",
        "Finch",
        "Fingal",
        "Fisherville",
        "Fitzroy Harbour",
        "Flamborough",
        "Flesherton",
        "Flinton",
        "Floradale",
        "Florence",
        "Foleyet",
        "Fonthill",
        "Fordwich",
        "Forest",
        "Fort Albany",
        "Fort Erie",
        "Fort Frances",
        "Fort Hope",
        "Fort William",
        "Foxboro",
        "Foymount",
        "Frankford",
        "Fraserdale",
        "Fraserville",
        "Freelton",
        "Fruitland",
        "Fullarton",
        "Gads Hill Station",
        "Galt",
        "Gananoque",
        "Garden River",
        "Garden Village",
        "Garson",
        "Georgetown",
        "Georgina",
        "Geraldton",
        "Gilford",
        "Gilmour",
        "Glanworth",
        "Glen Huron",
        "Glen Robertson",
        "Glen Williams",
        "Glenburnie",
        "Glencairn",
        "Glencoe",
        "Gloucester",
        "Goderich",
        "Godfrey",
        "Gogama",
        "Golden Lake",
        "Golden Valley",
        "Gooderham",
        "Goodwood",
        "Gore Bay",
        "Gores Landing",
        "Gormley",
        "Gorrie",
        "Goulais River",
        "Gowanstown",
        "Grafton",
        "Grand Bend",
        "Grand Valley",
        "Grande Pointe",
        "Granton",
        "Grassie",
        "Gravenhurst",
        "Greely",
        "Green Valley",
        "Greenbank",
        "Greensville",
        "Greenwood",
        "Griffith",
        "Grimsby",
        "Guelph",
        "Gull Bay",
        "Hagersville",
        "Haileybury",
        "Haley Station",
        "Haliburton",
        "Halton Hills",
        "Hamilton",
        "Hammond",
        "Hampton",
        "Hanlan Township",
        "Hanmer",
        "Hannon",
        "Hanover",
        "Harcourt",
        "Harley",
        "Harrietsville",
        "Harriston",
        "Harrow",
        "Harrowsmith",
        "Hartington",
        "Hastings",
        "Havelock",
        "Hawk Junction",
        "Hawkesbury",
        "Hawkestone",
        "Hawkesville",
        "Hazeldean",
        "Hearst",
        "Heidelberg",
        "Hensall",
        "Hepworth",
        "Heron Bay",
        "Heron Bay South",
        "Hespeler",
        "Hickson",
        "Highgate",
        "Highland Grove",
        "Hilldale",
        "Hilliardton",
        "Hillier",
        "Hillsburgh",
        "Hilton Beach",
        "Holland Landing",
        "Holstein",
        "Holyrood",
        "Honey Harbour",
        "Hornby",
        "Hornell Heights",
        "Hornepayne",
        "Hornings Mills",
        "Hudson",
        "Huntsville",
        "Huron Park",
        "Huttonville",
        "Hyde Park",
        "Ignace",
        "Ilderton",
        "Indian River",
        "Ingersoll",
        "Ingleside",
        "Inglewood",
        "Ingolf",
        "Innerkip",
        "Innisfil",
        "Inverary",
        "Iron Bridge",
        "Irondale",
        "Iroquois",
        "Iroquois Falls",
        "Island Grove",
        "Islington",
        "Jacksons Point",
        "Jamestown",
        "Janetville",
        "Jarvis",
        "Jasper",
        "Jerseyville",
        "Johnstown",
        "Jordan",
        "Jordan Station",
        "Joyceville",
        "Kagawong",
        "Kakabeka Falls",
        "Kaladar",
        "Kaministiquia",
        "Kanata",
        "Kapuskasing",
        "Kars",
        "Katrine",
        "Kearney",
        "Keene",
        "Keewatin",
        "Kemble",
        "Kemptville",
        "Kenabeek",
        "Kendal",
        "Kenilworth",
        "Kenmore",
        "Kenora",
        "Kent Bridge",
        "Kerwood",
        "Keswick",
        "Kettleby",
        "Kilbride",
        "Killaloe",
        "Killarney",
        "Kilworth",
        "Kilworthy",
        "Kimberley",
        "Kinburn",
        "Kincardine",
        "King",
        "King City",
        "King Kirkland",
        "Kingston",
        "Kingsville",
        "Kinmount",
        "Kintore",
        "Kirkfield",
        "Kirkland Lake",
        "Kirkton",
        "Kitchener",
        "Kleinburg",
        "Komoka",
        "La Salette",
        "La Salle",
        "Lagoon City",
        "Lakefield",
        "Lakehurst",
        "Lakeshore",
        "L'Amable",
        "Lambeth",
        "Lambton Shores",
        "Lanark",
        "Lancaster",
        "Langstaff",
        "Langton",
        "Lansdowne",
        "Larder Lake",
        "Latchford",
        "Lavigne",
        "Leamington",
        "Lefroy",
        "Leith",
        "Levack",
        "Limehouse",
        "Limoges",
        "Lincoln",
        "Lindsay",
        "Linwood",
        "Lions Head",
        "Lisle",
        "Listowel",
        "Little Britain",
        "Little Current",
        "Lively",
        "Locust Hill",
        "Lombardy",
        "Londesborough",
        "London",
        "Long Sault",
        "Longbow Lake",
        "Longford  Mills",
        "Longlac",
        "Loretto",
        "L'orignal",
        "Loring",
        "Lorne Park",
        "Lowbanks",
        "Lucan",
        "Lucknow",
        "Lunenburg",
        "Lyn",
        "Lynden",
        "Lyndhurst",
        "Maberly",
        "Mactier",
        "Madawaska",
        "Madoc",
        "Madsen",
        "Magnetawan",
        "Maidstone",
        "Maitland",
        "Mallorytown",
        "Malton",
        "Manilla",
        "Manitouwadge",
        "Manitowaning",
        "Manotick",
        "Mansfield",
        "Maple",
        "Maple Leaf",
        "Marathon",
        "Markdale",
        "Markham",
        "Markstay",
        "Marlbank",
        "Marmora",
        "Martintown",
        "Maryhill",
        "Marysville",
        "Massey",
        "Matachewan",
        "Matheson",
        "Mattawa",
        "Mattice",
        "Maxville",
        "Maxwell",
        "Maynooth",
        "Mcdonald",
        "McDonalds Corners",
        "McDougall",
        "McGregor",
        "McKellar",
        "McKerrow",
        "Meadowvale",
        "Meaford",
        "Melancthon",
        "Melbourne",
        "Meldrum Bay",
        "Merlin",
        "Merrickville",
        "Merritton",
        "Metcalfe",
        "Midhurst",
        "Midland",
        "Mildmay",
        "Milford",
        "Milford Bay",
        "Millbrook",
        "Miller Lake",
        "Millgrove",
        "Milliken",
        "Milton",
        "Milverton",
        "Minaki",
        "Mindemoya",
        "Minden",
        "Minesing",
        "Minett",
        "Mississauga",
        "Mitchell",
        "Mitchell's Bay",
        "Mobert",
        "Moffat",
        "Monetville",
        "Monkland",
        "Monkton",
        "Mono",
        "Mono Mills",
        "Monteith",
        "Moonbeam",
        "Moonstone",
        "Moorefield",
        "Mooretown",
        "Moose Creek",
        "Moose Factory",
        "Moosonee",
        "Morewood",
        "Morpeth",
        "Morrisburg",
        "Morriston",
        "Moscow",
        "Mossley",
        "Mount Albert",
        "Mount Brydges",
        "Mount Elgin",
        "Mount Forest",
        "Mount Hope",
        "Mount Pleasant",
        "Mountain",
        "Mountain Grove",
        "Muirkirk",
        "Mulmur",
        "Muncey",
        "Munster",
        "Murillo",
        "Nairn Centre",
        "Nakina",
        "Nanticoke",
        "Napanee",
        "Naughton",
        "Navan",
        "Neebing",
        "Nepean",
        "Nestleton",
        "Neustadt",
        "New Dundee",
        "New Hamburg",
        "New Liskeard",
        "New Lowell",
        "Newboro",
        "Newburgh",
        "Newbury",
        "Newcastle",
        "Newington",
        "Newmarket",
        "Newtonville",
        "Niagara Falls",
        "Niagara-on-the-lake",
        "Nipigon",
        "Nipissing",
        "Nobel",
        "Nobleton",
        "Noelville",
        "Nolalu",
        "Norland",
        "North Augusta",
        "North Bay",
        "North Buxton",
        "North Cobalt",
        "North Gower",
        "North Lancaster",
        "North York",
        "Northbrook",
        "Norval",
        "Norwich",
        "Norwood",
        "Nottawa",
        "Novar",
        "Oak Ridges",
        "Oakville",
        "Oakwood",
        "Odessa",
        "Ohsweken",
        "Oil Springs",
        "Oldcastle",
        "Omemee",
        "Ompah",
        "Onaping",
        "Opasatika",
        "Orangeville",
        "Orillia",
        "Orleans",
        "Oro",
        "Oro Station",
        "Oro-Medonte",
        "Orono",
        "Orton",
        "Osgoode",
        "Oshawa",
        "Otonabee",
        "Ottawa",
        "Otterville",
        "Owen Sound",
        "Oxford Mills",
        "Oxford Station",
        "Paincourt",
        "Painswick",
        "Paisley",
        "Pakenham",
        "Palgrave",
        "Palmer Rapids",
        "Palmerston",
        "Parham",
        "Paris",
        "Parkhill",
        "Parry Sound",
        "Pefferlaw",
        "Pelee Island",
        "Pelham",
        "Pembroke",
        "Penetang",
        "Penetanguishene",
        "Perkinsfield",
        "Perth",
        "Perth Road",
        "Petawawa",
        "Peterborough",
        "Petersburg",
        "Petrolia",
        "Phelpston",
        "Pickerel",
        "Pickering",
        "Pickle Lake",
        "Picton",
        "Pikangikum",
        "Plainfield",
        "Plainville",
        "Plantagenet",
        "Plattsville",
        "Plevna",
        "Point Edward",
        "Pointe Au Baril",
        "Pointe-aux-Roches",
        "Pontypool",
        "Porcupine",
        "Porquis Junction",
        "Port Arthur",
        "Port Burwell",
        "Port Carling",
        "Port Colborne",
        "Port Credit",
        "Port Dover",
        "Port Elgin",
        "Port Franks",
        "Port Hope",
        "Port Lambton",
        "Port Loring",
        "Port McNicoll",
        "Port Perry",
        "Port Robinson",
        "Port Rowan",
        "Port Severn",
        "Port Stanley",
        "Port Sydney",
        "Portland",
        "Powassan",
        "Prescott",
        "Preston",
        "Priceville",
        "Prince Albert",
        "Prince Township",
        "Princeton",
        "Proton Station",
        "Providence Bay",
        "Puce",
        "Puslinch",
        "Putnam",
        "Queenston",
        "Queensville",
        "Rainy River",
        "Rama",
        "Ramore",
        "Ravenna",
        "Reaboro",
        "Red Lake",
        "Red Rock",
        "Redbridge",
        "Renfrew",
        "Rexdale",
        "Richards Landing",
        "Richmond",
        "Richmond Hill",
        "Rideau Ferry",
        "Ridgetown",
        "Ridgeville",
        "Ridgeway",
        "Ripley",
        "River Drive Park",
        "Riverside",
        "Roblin",
        "Rochester",
        "Rockcliffe",
        "Rockcliffe Park",
        "Rockland",
        "Rockport",
        "Rockton",
        "Rockwood",
        "Rodney",
        "Rosemont",
        "Roseneath",
        "Roslin",
        "Rosseau",
        "Rosslyn",
        "Rossmore",
        "Rossport",
        "Rostock",
        "Russell",
        "Rutherglen",
        "Ruthven",
        "Salem",
        "Sandwich West",
        "Sandy Lake",
        "Sarnia",
        "Sarsfield",
        "Sauble Beach",
        "Sault Ste Marie",
        "Savant Lake",
        "Scarborough",
        "Schomberg",
        "Schreiber",
        "Schumacher",
        "Scotland",
        "Seaforth",
        "Seagrave",
        "Sebright",
        "Sebringville",
        "Seeleys Bay",
        "Seguin",
        "Selby",
        "Selkirk",
        "Selwyn",
        "Serpent River",
        "Sesekinika",
        "Severn",
        "Severn Bridge",
        "Shakespeare",
        "Shallow Lake",
        "Shannonville",
        "Shanty Bay",
        "Sharbot Lake",
        "Sharon",
        "Shedden",
        "Sheffield",
        "Sheguiandah",
        "Shelburne",
        "Sherkston",
        "Shining Tree",
        "Shuniah",
        "Simcoe",
        "Singhampton",
        "Sioux Lookout",
        "Sioux Narrows",
        "Skead",
        "Slate Falls",
        "Smiths Falls",
        "Smithville",
        "Smooth Rock Falls",
        "Snelgrove",
        "Snow Road Station",
        "Sombra",
        "South Bay Mouth",
        "South Bruce Peninsula",
        "South Gillies",
        "South Mountain",
        "South Porcupine",
        "South River",
        "South Woodslee",
        "Southampton",
        "SouthWold",
        "Spanish",
        "Spencerville",
        "Spring Bay",
        "Springbrook",
        "Springfield",
        "Springford",
        "Sprucedale",
        "St Agatha",
        "St Albert",
        "St Andrews West",
        "St Anns",
        "St Catharines",
        "St Charles",
        "St Clair Beach",
        "St Clements",
        "St Davids",
        "St Eugene",
        "St George",
        "St George Brant",
        "St Isidore",
        "St Isidore Des Prescott",
        "St Jacobs",
        "St Joachim",
        "St Marys",
        "St Pascal Baylon",
        "St Pauls Station",
        "St Thomas",
        "St Williams",
        "Staples",
        "Stayner",
        "Stella",
        "Stevensville",
        "Stirling",
        "Stittsville",
        "Stoney Creek",
        "Stoney Point",
        "Stouffville",
        "Straffordville",
        "Stratford",
        "Strathroy",
        "Stratton",
        "Streetsville",
        "Stroud",
        "Sturgeon Falls",
        "Sudbury",
        "Sultan",
        "Summerstown",
        "Sunderland",
        "Sundridge",
        "Sutton",
        "Sutton West",
        "Swastika",
        "Sydenham",
        "Talbotville",
        "Tamworth",
        "Tara",
        "Tarzwell",
        "Tavistock",
        "Tecumseh",
        "Teeswater",
        "Temagami",
        "Terra Cotta",
        "Terrace Bay",
        "Thamesford",
        "Thamesville",
        "Thedford",
        "Thessalon",
        "Thomasburg",
        "Thornbury",
        "Thorndale",
        "Thorne",
        "Thornhill",
        "Thornton",
        "Thorold",
        "Thunder Bay",
        "Tichborne",
        "Tilbury",
        "Tillsonburg",
        "Timmins",
        "Tiny",
        "Tiverton",
        "Tobermory",
        "Toledo",
        "Toronto",
        "Torrance",
        "Tottenham",
        "Townsend",
        "Trent Lakes",
        "Trent River",
        "Trenton",
        "Trout Creek",
        "Troy",
        "Tupperville",
        "Tweed",
        "Udora",
        "Union",
        "Unionville",
        "Utopia",
        "Utterson",
        "Uxbridge",
        "Val Caron",
        "Val Gagne",
        "Val Rita",
        "Val Therese",
        "Vandorf",
        "Vanessa",
        "Vanier",
        "Vankleek Hill",
        "Vars",
        "Vaughan",
        "Vermilion Bay",
        "Verner",
        "Verona",
        "Vickers Heights",
        "Victoria Harbour",
        "Vienna",
        "Vineland",
        "Vineland Station",
        "Vinemount",
        "Virgil",
        "Virginiatown",
        "Vittoria",
        "Wabigoon",
        "Wahnapitae",
        "Wainfleet",
        "Walden",
        "Walford",
        "Walkerton",
        "Walkerville",
        "Wallace Town",
        "Wallaceburg",
        "Wallenstein",
        "Walters Falls",
        "Walton",
        "Wardsville",
        "Warkworth",
        "Warminster",
        "Warren",
        "Warsaw",
        "Wasaga Beach",
        "Washago",
        "Waterdown",
        "Waterford",
        "Waterloo",
        "Watford",
        "Waubaushene",
        "Wawa",
        "Webbwood",
        "Welland",
        "Wellandport",
        "Wellesley",
        "Wellington",
        "Wendover",
        "West Bay",
        "West Flamborough",
        "West Guilford",
        "West Hill",
        "West Lorne",
        "West Montrose",
        "Westbrook",
        "Westdale",
        "Westmeath",
        "Westminster",
        "Weston",
        "Westport",
        "Wheatley",
        "Whitby",
        "White Lake",
        "White River",
        "Whitedog",
        "Whitefish",
        "Whitefish Falls",
        "Whitefish River",
        "Whitevale",
        "Whitney",
        "Wiarton",
        "Wikwemikong",
        "Wilberforce",
        "Wilkesport",
        "Williamsburg",
        "Williamsford",
        "Williamstown",
        "Willow Beach",
        "Willowdale",
        "Wilno",
        "Wilsonville",
        "Winchester",
        "Windermere",
        "Windham Centre",
        "Windsor",
        "Wingham",
        "Winona",
        "Wolfe Island",
        "Woodbridge",
        "Woodham",
        "Woodland Beach",
        "Woodlawn",
        "Woodslee",
        "Woodstock",
        "Woodview",
        "Woodville",
        "Wooler",
        "Worthington",
        "Wroxeter",
        "Wyebridge",
        "Wyevale",
        "Wyoming",
        "Yarker",
        "York",
        "Zephyr",
        "Zurich"
    ]
    
}