-- init.sql
CREATE DATABASE IF NOT EXISTS testdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE testdb;

CREATE TABLE IF NOT EXISTS concepts (
    id VARCHAR(255) PRIMARY KEY,
    subject_nb VARCHAR(255),
    subject_nn VARCHAR(255),
    subject_en VARCHAR(255),
    preferredLabel_nb VARCHAR(255),
    preferredLabel_nn VARCHAR(255),
    preferredLabel_en VARCHAR(255),
    alternativeLabel_nb VARCHAR(255),
    alternativeLabel_nn VARCHAR(255),
    alternativeLabel_en VARCHAR(255),
    definition_nb TEXT,
    definition_nn TEXT,
    definition_en TEXT,
    definition_lastUpdated DATE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO concepts (id, subject_nb, subject_nn, subject_en, preferredLabel_nb, preferredLabel_nn, preferredLabel_en, alternativeLabel_nb, alternativeLabel_nn, alternativeLabel_en, definition_nb, definition_nn, definition_en, definition_lastUpdated) VALUES
('1', 'Informatikk', 'Informatikk', 'Computer Science', 'Algoritme', 'Algoritme', 'Algorithm', 'Prosedyre', 'Prosedyre', 'Procedure', 'En presis beskrivelse av en serie operasjoner som skal utføres for å løse et problem.', 'Ei presis skildring av ein serie operasjonar som skal utførast for å løyse eit problem.', 'A precise description of a series of operations to be performed to solve a problem.', '2024-07-01'),
('2', 'Matematikk', 'Matematikk', 'Mathematics', 'Integral', 'Integral', 'Integral', 'Antiderivat', 'Antiderivert', 'Antiderivative', 'En matematisk operasjon som brukes til å beregne areal under en kurve eller volum av en figur.', 'Ein matematisk operasjon som vert nytta til å rekne ut areal under ei kurve eller volum av ein figur.', 'A mathematical operation used to calculate the area under a curve or the volume of a figure.', '2024-07-02'),
('3', 'Fysikk', 'Fysikk', 'Physics', 'Entropi', 'Entropi', 'Entropy', 'Uorden', 'Uorden', 'Disorder', 'Et mål på graden av uorden eller tilfeldighet i et system.', 'Eit mål på graden av uorden eller tilfeldigheit i eit system.', 'A measure of the degree of disorder or randomness in a system.', '2024-07-03'),
('4', 'Biologi', 'Biologi', 'Biology', 'Fotosyntese', 'Fotosyntese', 'Photosynthesis', 'Karbonfiksering', 'Karbonfiksering', 'Carbon fixation', 'Prosessen der planter og andre organismer omdanner lysenergi til kjemisk energi som kan brukes til å drive organismens aktiviteter.', 'Prosessen der plantar og andre organismar omdannar lysenergi til kjemisk energi som kan brukast til å drive organismen sine aktivitetar.', 'The process by which plants and other organisms convert light energy into chemical energy that can be used to fuel the organism\'s activities.', '2024-07-04'),
('5', 'Kjemi', 'Kjemi', 'Chemistry', 'Katalysator', 'Katalysator', 'Catalyst', 'Reaksjonsakselerator', 'Reaksjonsakselerator', 'Reaction accelerator', 'Et stoff som øker hastigheten på en kjemisk reaksjon uten selv å bli forbrukt i prosessen.', 'Eit stoff som aukar farten på ein kjemisk reaksjon utan sjølv å bli forbrukt i prosessen.', 'A substance that increases the rate of a chemical reaction without itself being consumed in the process.', '2024-07-05'),
('6', 'Geologi', 'Geologi', 'Geology', 'Tektonisk plate', 'Tektonisk plate', 'Tectonic plate', 'Litosfæreplate', 'Litosfæreplate', 'Lithospheric plate', 'Et massivt, irregulært formet stykke av jordens litosfære som beveger seg i forhold til andre plater.', 'Eit massivt, irregulært forma stykke av jorda si litosfære som beveger seg i forhold til andre plater.', 'A massive, irregularly shaped slab of solid rock, generally composed of both continental and oceanic lithosphere, that moves relative to other plates.', '2024-07-06'),
('7', 'Psykologi', 'Psykologi', 'Psychology', 'Kognitiv dissonans', 'Kognitiv dissonans', 'Cognitive dissonance', 'Mental uoverensstemmelse', 'Mental uovereinstemmelse', 'Mental inconsistency', 'Den mentale konflikten som oppstår når en persons overbevisninger eller antakelser blir motsagt av ny informasjon.', 'Den mentale konflikten som oppstår når ein person sine overtydingar eller føresetnader blir motsagt av ny informasjon.', 'The mental conflict that occurs when a person\'s beliefs or assumptions are contradicted by new information.', '2024-07-07'),
('8', 'Økonomi', 'Økonomi', 'Economics', 'Inflasjon', 'Inflasjon', 'Inflation', 'Prisstigning', 'Prisstigning', 'Price increase', 'En generell økning i prisnivået i en økonomi over tid, som resulterer i en reduksjon av pengenes kjøpekraft.', 'Ein generell auke i prisnivået i ein økonomi over tid, som resulterer i ein reduksjon av pengane si kjøpekraft.', 'A general increase in prices and fall in the purchasing value of money over time in an economy.', '2024-07-08'),
('9', 'Lingvistikk', 'Lingvistikk', 'Linguistics', 'Fonem', 'Fonem', 'Phoneme', 'Språklyd', 'Språklyd', 'Speech sound', 'Den minste lydenhet i et språk som kan skille mellom ordenes betydning.', 'Den minste lydeininga i eit språk som kan skilje mellom orda si tyding.', 'The smallest unit of sound in a language that can distinguish between word meanings.', '2024-07-09'),
('10', 'Filosofi', 'Filosofi', 'Philosophy', 'Epistemologi', 'Epistemologi', 'Epistemology', 'Erkjennelsesteori', 'Erkjenningsteori', 'Theory of knowledge', 'Den grenen av filosofi som studerer kunnskapens natur, opprinnelse og grenser.', 'Den greina av filosofi som studerer kunnskapen sin natur, opphav og grenser.', 'The branch of philosophy that studies the nature, origin, and limits of human knowledge.', '2024-07-10'),
('11', 'Sosiologi', 'Sosiologi', 'Sociology', 'Sosialisering', 'Sosialisering', 'Socialization', 'Sosial læring', 'Sosial læring', 'Social learning', 'Prosessen der individer lærer og internaliserer normer, verdier og atferdsmønstre i sitt samfunn.', 'Prosessen der individ lærer og internaliserer normer, verdiar og åtferdsmønster i samfunnet sitt.', 'The process through which individuals learn and internalize the norms, values, and behaviors of their society.', '2024-07-11'),
('12', 'Astronomi', 'Astronomi', 'Astronomy', 'Galakse', 'Galakse', 'Galaxy', 'Stjernesystem', 'Stjernesystem', 'Star system', 'En massiv samling av stjerner, gass, støv og mørk materie som holdes sammen av tyngdekraften.', 'Ei massiv samling av stjerner, gass, støv og mørk materie som vert haldne saman av tyngdekrafta.', 'A vast collection of stars, gas, dust, and dark matter held together by gravity.', '2024-07-12'),
('13', 'Medisin', 'Medisin', 'Medicine', 'Homeostase', 'Homeostase', 'Homeostasis', 'Likevekt', 'Likevekt', 'Equilibrium', 'Kroppens evne til å opprettholde et stabilt indre miljø til tross for endringer i det ytre miljøet.', 'Kroppen si evne til å oppretthalde eit stabilt indre miljø trass i endringar i det ytre miljøet.', 'The body\'s ability to maintain a stable internal environment despite changes in the external environment.', '2024-07-13'),
('14', 'Kunsthistorie', 'Kunsthistorie', 'Art History', 'Impresjonisme', 'Impresjonisme', 'Impressionism', 'Inntrykkskunst', 'Inntrykkskunst', 'Impression art', 'En kunstbevegelse som oppsto på slutten av 1800-tallet, kjennetegnet ved å fange visuelle inntrykk av lys og bevegelse.', 'Ei kunstrørsle som oppstod på slutten av 1800-talet, kjenneteikna ved å fange visuelle inntrykk av lys og rørsle.', 'An art movement that emerged in the late 19th century, characterized by capturing visual impressions of light and movement.', '2024-07-14'),
('15', 'Miljøvitenskap', 'Miljøvitskap', 'Environmental Science', 'Bærekraft', 'Berekraft', 'Sustainability', 'Bærekraftig utvikling', 'Berekraftig utvikling', 'Sustainable development', 'Prinsippet om å møte dagens behov uten å kompromittere fremtidige generasjoners evne til å møte sine egne behov.', 'Prinsippet om å møte dagens behov utan å kompromittere framtidige generasjonar si evne til å møte sine eigne behov.', 'The principle of meeting present needs without compromising the ability of future generations to meet their own needs.', '2024-07-15'),
('16', 'Litteratur', 'Litteratur', 'Literature', 'Metafor', 'Metafor', 'Metaphor', 'Sammenligning', 'Samanlikning', 'Comparison', 'Et språkbruk der et ord eller uttrykk brukes på en ikke-bokstavelig måte for å antyde en likhet med en annen ting.', 'Eit språkbruk der eit ord eller uttrykk blir brukt på ein ikkje-bokstaveleg måte for å antyde ein likskap med ei anna ting.', 'A figure of speech in which a word or phrase is applied to an object or action to which it is not literally applicable.', '2024-07-16'),
('17', 'Teknologi', 'Teknologi', 'Technology', 'Kunstig intelligens', 'Kunstig intelligens', 'Artificial Intelligence', 'Maskinlæring', 'Maskinlæring', 'Machine Learning', 'Et område innen datavitenskap som fokuserer på å skape systemer som kan lære av data og forbedre seg over tid uten menneskelig inngripen.', 'Eit område innan datavitenskap som fokuserer på å lage system som kan lære av data og forbetre seg over tid utan menneskeleg inngriping.', 'A field of computer science focused on creating systems that can learn from data and improve over time without human intervention.', '2024-07-17'),
('18', 'Sosiologi', 'Sosiologi', 'Sociology', 'Kultur', 'Kultur', 'Culture', 'Samfunn', 'Samfunn', 'Society', 'De skikker, verdier, normer og symboler som et samfunn deler og viderefører.', 'Dei skikkar, verdiar, normer og symbol som eit samfunn deler og vidarefører.', 'The customs, values, norms, and symbols that a society shares and transmits.', '2024-07-18'),
('19', 'Medisin', 'Medisin', 'Medicine', 'Genetikk', 'Genetikk', 'Genetics', 'Arv', 'Arv', 'Inheritance', 'Studiet av gener og arvelighet i organismer.', 'Studiet av gen og arvelegheit i organismar.', 'The study of genes and heredity in organisms.', '2024-07-19'),
('20', 'Filosofi', 'Filosofi', 'Philosophy', 'Etikk', 'Etikk', 'Ethics', 'Moralfilosofi', 'Moralfilosofi', 'Moral Philosophy', 'Grenen av filosofi som omhandler spørsmål om moral og det gode liv.', 'Greina av filosofi som omhandlar spørsmål om moral og det gode liv.', 'The branch of philosophy that deals with questions of morality and the good life.', '2024-07-20'),
('21', 'Fysikk', 'Fysikk', 'Physics', 'Relativitetsteori', 'Relativitetsteori', 'Theory of Relativity', 'Einsteins teori', 'Einsteins teori', 'Einstein\'s Theory', 'Fysisk teori utviklet av Albert Einstein som omfatter spesielle og generelle relativitetsteori.', 'Fysisk teori utvikla av Albert Einstein som omfattar spesielle og generelle relativitetsteori.', 'A physical theory developed by Albert Einstein that encompasses special and general relativity.', '2024-07-21'),
('22', 'Kjemi', 'Kjemi', 'Chemistry', 'Molekyl', 'Molekyl', 'Molecule', 'Atomgruppe', 'Atomgruppe', 'Group of Atoms', 'Den minste enheten av et kjemisk stoff som kan eksistere selvstendig og beholde alle stoffets kjemiske egenskaper.', 'Den minste eininga av eit kjemisk stoff som kan eksistere sjølvstendig og behalde alle stoffets kjemiske eigenskapar.', 'The smallest unit of a chemical substance that can exist independently and retain all the substance\'s chemical properties.', '2024-07-22'),
('23', 'Geologi', 'Geologi', 'Geology', 'Mineral', 'Mineral', 'Mineral', 'Bergart', 'Bergart', 'Rock', 'Et fast stoff dannet ved naturlige geologiske prosesser.', 'Eit fast stoff danna ved naturlege geologiske prosessar.', 'A solid substance formed through natural geological processes.', '2024-07-23'),
('24', 'Psykologi', 'Psykologi', 'Psychology', 'Behaviorisme', 'Behaviorisme', 'Behaviorism', 'Atferdsteori', 'Atferdsteori', 'Behavioral Theory', 'En psykologisk tilnærming som fokuserer på studiet av observerbar atferd.', 'Ei psykologisk tilnærming som fokuserer på studiet av observerbar atferd.', 'A psychological approach that focuses on the study of observable behavior.', '2024-07-24'),
('25', 'Økonomi', 'Økonomi', 'Economics', 'Markedsøkonomi', 'Marknadsøkonomi', 'Market Economy', 'Fri økonomi', 'Fri økonomi', 'Free Economy', 'Et økonomisk system der beslutninger om produksjon og fordeling av varer og tjenester bestemmes av markedskrefter.', 'Eit økonomisk system der avgjerder om produksjon og fordeling av varer og tenester blir bestemt av marknadskrefter.', 'An economic system in which decisions about the production and distribution of goods and services are determined by market forces.', '2024-07-25'),
('26', 'Lingvistikk', 'Lingvistikk', 'Linguistics', 'Syntax', 'Syntaks', 'Syntax', 'Setningsstruktur', 'Setningsstruktur', 'Sentence Structure', 'Studiet av setningsoppbygning og regler for setningsdannelse i et språk.', 'Studiet av setningsoppbygging og reglar for setningsdanning i eit språk.', 'The study of sentence structure and the rules for sentence formation in a language.', '2024-07-26'),
('27', 'Teknologi', 'Teknologi', 'Technology', 'Blockchain', 'Blockchain', 'Blockchain', 'Blokkjedeteknologi', 'Blokkjedeteknologi', 'Block Chain Technology', 'En desentralisert digital hovedbok som registrerer transaksjoner på tvers av mange datamaskiner på en måte som gjør at de involverte registreringene ikke kan endres med tilbakevirkende kraft.', 'Ei desentralisert digital hovudbok som registrerer transaksjonar på tvers av mange datamaskiner på ein måte som gjer at dei involverte registreringane ikkje kan endrast med tilbakeverkande kraft.', 'A decentralized digital ledger that records transactions across many computers in such a way that the involved records cannot be altered retroactively.', '2024-07-27'),
('28', 'Biologi', 'Biologi', 'Biology', 'Genmodifisering', 'Genmodifisering', 'Genetic Modification', 'Genmanipulasjon', 'Genmanipulasjon', 'Genetic Manipulation', 'Endring av en organisms DNA for å oppnå ønskede egenskaper.', 'Endring av ein organisms DNA for å oppnå ønska eigenskapar.', 'The alteration of an organism\'s DNA to achieve desired traits.', '2024-07-28'),
('29', 'Litteratur', 'Litteratur', 'Literature', 'Ironi', 'Ironi', 'Irony', 'Sarkasme', 'Sarkasme', 'Sarcasm', 'Bruk av ord for å uttrykke noe annet og ofte motsatt av deres bokstavelige betydning.', 'Bruk av ord for å uttrykkje noko anna og ofte motsett av deira bokstavelege tyding.', 'The use of words to express something other than and often the opposite of the literal meaning.', '2024-07-29'),
('30', 'Filosofi', 'Filosofi', 'Philosophy', 'Eksistensialisme', 'Eksistensialisme', 'Existentialism', 'Tilværelsesfilosofi', 'Tilværselsfilosofi', 'Philosophy of Existence', 'En filosofisk retning som fokuserer på individets frie valg og ansvar.', 'Ein filosofisk retning som fokuserer på individets frie val og ansvar.', 'A philosophical movement that focuses on the individual\'s free will and responsibility.', '2024-07-30'),
('31', 'Astronomi', 'Astronomi', 'Astronomy', 'Supernova', 'Supernova', 'Supernova', 'Stjerneeksplosjon', 'Stjerneeksplosjon', 'Star Explosion', 'En stjernes voldsom eksplosjon som resulterer i en dramatisk økning i lysstyrke.', 'Ein stjernes voldsame eksplosjon som resulterer i ei dramatisk auke i lysstyrke.', 'A star\'s violent explosion resulting in a dramatic increase in brightness.', '2024-07-31'),
('32', 'Medisin', 'Medisin', 'Medicine', 'Vaksine', 'Vaksine', 'Vaccine', 'Immunisering', 'Immunisering', 'Immunization', 'Et biologisk preparat som gir aktiv ervervet immunitet mot en bestemt infeksjonssykdom.', 'Eit biologisk preparat som gir aktiv erverva immunitet mot ein bestemt infeksjonssjukdom.', 'A biological preparation that provides active acquired immunity to a particular infectious disease.', '2024-08-01'),
('33', 'Teknologi', 'Teknologi', 'Technology', 'Kvantedatamaskin', 'Kvantedatamaskin', 'Quantum Computer', 'Kvantemaskin', 'Kvantemaskin', 'Quantum Machine', 'En type datamaskin som bruker kvantemekaniske fenomener som superposisjon og sammenfiltring for å utføre beregninger.', 'Ein type datamaskin som bruker kvantemekaniske fenomen som superposisjon og samanfiltring for å utføre berekningar.', 'A type of computer that uses quantum-mechanical phenomena such as superposition and entanglement to perform computations.', '2024-08-02'),
('34', 'Biologi', 'Biologi', 'Biology', 'Evolusjon', 'Evolusjon', 'Evolution', 'Utvikling', 'Utvikling', 'Development', 'Prosessen der ulike arter utvikler seg over tid gjennom naturlig utvalg.', 'Prosessen der ulike artar utviklar seg over tid gjennom naturleg utval.', 'The process by which different species evolve over time through natural selection.', '2024-08-03'),
('35', 'Økonomi', 'Økonomi', 'Economics', 'Børs', 'Børs', 'Stock Exchange', 'Aksjemarked', 'Aksjemarknad', 'Stock Market', 'En markedsplass der aksjer, obligasjoner og andre verdipapirer kjøpes og selges.', 'Ein marknadsplass der aksjar, obligasjonar og andre verdipapir blir kjøpte og selde.', 'A marketplace where stocks, bonds, and other securities are bought and sold.', '2024-08-04'),
('36', 'Fysikk', 'Fysikk', 'Physics', 'Kvantefysikk', 'Kvantefysikk', 'Quantum Physics', 'Kvantevitenskap', 'Kvantevitskap', 'Quantum Science', 'Studiet av fysikken til subatomære partikler og kvantemekanikk.', 'Studiet av fysikken til subatomære partikler og kvantemekanikk.', 'The study of the physics of subatomic particles and quantum mechanics.', '2024-08-05'),
('37', 'Kjemi', 'Kjemi', 'Chemistry', 'Reaksjonskinetikk', 'Reaksjonskinetikk', 'Reaction Kinetics', 'Reaksjonsdynamikk', 'Reaksjonsdynamikk', 'Reaction Dynamics', 'Studiet av reaksjonshastigheter og mekanismene for kjemiske reaksjoner.', 'Studiet av reaksjonshastigheiter og mekanismane for kjemiske reaksjonar.', 'The study of reaction rates and the mechanisms of chemical reactions.', '2024-08-06'),
('38', 'Sosiologi', 'Sosiologi', 'Sociology', 'Sosial struktur', 'Sosial struktur', 'Social Structure', 'Samfunnsstruktur', 'Samfunnsstruktur', 'Societal Structure', 'De organiserte mønstrene av sosiale forhold og sosiale institusjoner som utgjør samfunnet.', 'Dei organiserte mønstra av sosiale forhold og sosiale institusjonar som utgjer samfunnet.', 'The organized patterns of social relationships and social institutions that make up society.', '2024-08-07'),
('39', 'Psykologi', 'Psykologi', 'Psychology', 'Psykoanalyse', 'Psykoanalyse', 'Psychoanalysis', 'Dyp psykologi', 'Djup psykologi', 'Depth Psychology', 'En terapeutisk metode og teori om sinnsfunksjon utviklet av Sigmund Freud.', 'Ein terapeutisk metode og teori om sinnets funksjon utvikla av Sigmund Freud.', 'A therapeutic method and theory of mind functioning developed by Sigmund Freud.', '2024-08-08'),
('40', 'Lingvistikk', 'Lingvistikk', 'Linguistics', 'Semantikk', 'Semantikk', 'Semantics', 'Betydningslære', 'Tydingslære', 'Study of Meaning', 'Studiet av betydning i språk, inkludert hvordan tegn og symboler representerer ideer.', 'Studiet av tyding i språk, inkludert korleis teikn og symbol representerer idear.', 'The study of meaning in language, including how signs and symbols represent ideas.', '2024-08-09'),
('41', 'Økonomi', 'Økonomi', 'Economics', 'Makroøkonomi', 'Makroøkonomi', 'Macroeconomics', 'Makroøkonomisk teori', 'Makroøkonomisk teori', 'Macroeconomic Theory', 'Studiet av økonomien som helhet, inkludert inflasjon, arbeidsledighet og økonomisk vekst.', 'Studiet av økonomien som heilskap, inkludert inflasjon, arbeidsløyse og økonomisk vekst.', 'The study of the economy as a whole, including inflation, unemployment, and economic growth.', '2024-08-10'),
('42', 'Medisin', 'Medisin', 'Medicine', 'Patologi', 'Patologi', 'Pathology', 'Sykdomslære', 'Sjukdomslære', 'Study of Disease', 'Studiet av sykdommers årsaker, utvikling og virkninger.', 'Studiet av sjukdomars årsaker, utvikling og verknader.', 'The study of the causes, development, and effects of diseases.', '2024-08-11'),
('43', 'Kunsthistorie', 'Kunsthistorie', 'Art History', 'Kubisme', 'Kubisme', 'Cubism', 'Kubistisk kunst', 'Kubistisk kunst', 'Cubist Art', 'En avantgardekunstbevegelse som utfordret konvensjonell avbildning ved å bryte opp objekter og gjenmontere dem i abstrakte former.', 'Ei avantgardekunstrørsle som utfordra konvensjonell avbilding ved å bryte opp objekt og gjenmontere dei i abstrakte former.', 'An avant-garde art movement that challenged conventional depiction by breaking up objects and reassembling them in abstract forms.', '2024-08-12'),
('44', 'Biologi', 'Biologi', 'Biology', 'Fotosyntese', 'Fotosyntese', 'Photosynthesis', 'Lysenergiomdanning', 'Lysenergiomdanning', 'Light Energy Conversion', 'Prosessen der grønne planter og noen andre organismer bruker sollys til å syntetisere næringsstoffer fra karbondioksid og vann.', 'Prosessen der grøne plantar og nokre andre organismar bruker sollys til å syntetisere næringsstoff frå karbondioksid og vatn.', 'The process by which green plants and some other organisms use sunlight to synthesize nutrients from carbon dioxide and water.', '2024-08-13'),
('45', 'Teknologi', 'Teknologi', 'Technology', 'Internet of Things', 'Tingenes internett', 'Internet of Things', 'IoT', 'IoT', 'IoT', 'Et nettverk av fysiske objekter som er innebygd med sensorer, programvare og andre teknologier for å koble til og utveksle data med andre enheter og systemer over internett.', 'Eit nettverk av fysiske objekt som er innebygd med sensorar, programvare og andre teknologiar for å kople til og utveksle data med andre einingar og system over internett.', 'A network of physical objects that are embedded with sensors, software, and other technologies to connect and exchange data with other devices and systems over the internet.', '2024-08-14'),
('46', 'Matematikk', 'Matematikk', 'Mathematics', 'Differensialligning', 'Differensialligning', 'Differential Equation', 'Ligningsanalyse', 'Likningsanalyse', 'Equation Analysis', 'En matematisk ligning som relaterer en funksjon med dens deriverte.', 'Ei matematisk likning som relaterer ein funksjon med dens deriverte.', 'A mathematical equation that relates a function with its derivatives.', '2024-08-15'),
('47', 'Filosofi', 'Filosofi', 'Philosophy', 'Rasjonalisme', 'Rasjonalisme', 'Rationalism', 'Fornuftens filosofi', 'Fornuftens filosofi', 'Philosophy of Reason', 'En filosofisk tilnærming som vektlegger fornuft som hovedkilde og test for kunnskap.', 'Ei filosofisk tilnærming som vektlegg fornuft som hovudkjelde og test for kunnskap.', 'A philosophical approach that emphasizes reason as the main source and test for knowledge.', '2024-08-16'),
('48', 'Medisin', 'Medisin', 'Medicine', 'Onkologi', 'Onkologi', 'Oncology', 'Kreftforskning', 'Kreftforsking', 'Cancer Research', 'Studiet og behandlingen av svulster og kreft.', 'Studiet og behandlinga av svulstar og kreft.', 'The study and treatment of tumors and cancer.', '2024-08-17'),
('49', 'Sosiologi', 'Sosiologi', 'Sociology', 'Urbanisering', 'Urbanisering', 'Urbanization', 'Byvekst', 'Byvekst', 'City Growth', 'Prosessen der en økende andel av befolkningen i et område lever i byer og urbane områder.', 'Prosessen der ein aukande del av befolkninga i eit område lever i byar og urbane område.', 'The process by which an increasing proportion of a population lives in cities and urban areas.', '2024-08-18'),
('50', 'Astronomi', 'Astronomi', 'Astronomy', 'Eksoplanet', 'Eksoplanet', 'Exoplanet', 'Utenomjordisk planet', 'Utanomjordisk planet', 'Extraterrestrial Planet', 'En planet som kretser rundt en annen stjerne enn Solen.', 'Ein planet som kretsar rundt ei anna stjerne enn Solen.', 'A planet that orbits a star other than the Sun.', '2024-08-19'),
('51', 'Kjemi', 'Kjemi', 'Chemistry', 'Redoksreaksjon', 'Redoksreaksjon', 'Redox Reaction', 'Oksidasjon-reduksjonsreaksjon', 'Oksidasjon-reduksjonsreaksjon', 'Oxidation-Reduction Reaction', 'En kjemisk reaksjon der ett eller flere elektroner overføres mellom stoffer, noe som fører til endringer i oksidasjonstilstanden til disse stoffene.', 'Ein kjemisk reaksjon der eitt eller fleire elektron blir overførte mellom stoff, noko som fører til endringar i oksidasjonstilstanden til desse stoffa.', 'A chemical reaction in which one or more electrons are transferred between substances, leading to changes in their oxidation states.', '2024-08-20'),
('52', 'Lingvistikk', 'Lingvistikk', 'Linguistics', 'Pragmalingvistikk', 'Pragmalingvistikk', 'Pragmatics', 'Brukslingvistikk', 'Brukslingvistikk', 'Usage Linguistics', 'Studiet av hvordan kontekst bidrar til mening i språkbruk.', 'Studiet av korleis kontekst bidrar til tyding i språkbruk.', 'The study of how context contributes to meaning in language use.', '2024-08-21'),
('53', 'Matematikk', 'Matematikk', 'Mathematics', 'Topologi', 'Topologi', 'Topology', 'Formers matematikk', 'Formers matematikk', 'Mathematics of Shapes', 'Studiet av egenskaper som bevares under kontinuerlige deformasjoner av objekter.', 'Studiet av eigenskapar som blir bevart under kontinuerlege deformasjonar av objekt.', 'The study of properties that are preserved under continuous deformations of objects.', '2024-08-22'),
('54', 'Psykologi', 'Psykologi', 'Psychology', 'Gestaltpsykologi', 'Gestaltpsykologi', 'Gestalt Psychology', 'Helhetssyn', 'Heilheitssyn', 'Holistic View', 'En tilnærming innen psykologi som vektlegger at vi oppfatter helheter fremfor enkeltkomponenter.', 'Ei tilnærming innan psykologi som vektlegg at vi oppfattar heilskapar framfor enkeltdelar.', 'An approach in psychology that emphasizes that we perceive whole structures rather than individual components.', '2024-08-23'),
('55', 'Teknologi', 'Teknologi', 'Technology', 'Kryptografi', 'Kryptografi', 'Cryptography', 'Kodespråk', 'Kodespråk', 'Code Language', 'Studiet av teknikker for sikker kommunikasjon i nærvær av tredjeparter.', 'Studiet av teknikkar for sikker kommunikasjon i nærvær av tredjepartar.', 'The study of techniques for secure communication in the presence of third parties.', '2024-08-24'),
('56', 'Biologi', 'Biologi', 'Biology', 'Symbiose', 'Symbiose', 'Symbiosis', 'Sameksistens', 'Sameksistens', 'Coexistence', 'En tett og ofte langvarig interaksjon mellom to forskjellige biologiske arter.', 'Ein tett og ofte langvarig interaksjon mellom to ulike biologiske artar.', 'A close and often long-term interaction between two different biological species.', '2024-08-25'),
('57', 'Kunsthistorie', 'Kunsthistorie', 'Art History', 'Surrealisme', 'Surrealisme', 'Surrealism', 'Drømmeaktig kunst', 'Draumeaktig kunst', 'Dreamlike Art', 'En kunstbevegelse som utforsker det ubevisste sinn gjennom drømmeaktige og fantastiske bilder.', 'Ei kunstrørsle som utforskar det ubevisste sinn gjennom draumeaktige og fantastiske bilete.', 'An art movement that explores the unconscious mind through dreamlike and fantastical imagery.', '2024-08-26'),
('58', 'Sosiologi', 'Sosiologi', 'Sociology', 'Globalisering', 'Globalisering', 'Globalization', 'Verdenssammensmelting', 'Verdssammensmelting', 'World Integration', 'Prosessen der verdens økonomier, samfunn og kulturer blir stadig mer sammenkoblet.', 'Prosessen der verdas økonomiar, samfunn og kulturar blir stadig meir samanbundne.', 'The process by which the world\'s economies, societies, and cultures become increasingly interconnected.', '2024-08-27'),
('59', 'Astronomi', 'Astronomi', 'Astronomy', 'Kosmologi', 'Kosmologi', 'Cosmology', 'Universets vitenskap', 'Universets vitskap', 'Science of the Universe', 'Studiet av universets opprinnelse, struktur og utvikling.', 'Studiet av universets opphav, struktur og utvikling.', 'The study of the origin, structure, and evolution of the universe.', '2024-08-28'),
('60', 'Medisin', 'Medisin', 'Medicine', 'Neurovitenskap', 'Neurovitskap', 'Neuroscience', 'Hjerneforskning', 'Hjerneforsking', 'Brain Research', 'Studiet av nervesystemets struktur og funksjon.', 'Studiet av nervesystemets struktur og funksjon.', 'The study of the structure and function of the nervous system.', '2024-08-29');
