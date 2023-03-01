
INSERT into Categories(category_id, category_name)
values(1,'Images')
values(2,'Sports')
values(3,'History')
values(4,'Places')
values(5,'Japan')
values(6,'Clothes')
values(7,'Computer')
values(8,'Animals')

INSERT INTO Quizuser(
	user_name,
	pass_word
)
VALUES ('admin','admin')

insert into Questions(question_name,option_1,option_2,option_3,option_4,correct_answer,category_id)
values
('What Is The National Game Of India ?','Kabaddi','Cricket','Hockey','None','D',2),
('Winner Of Fifa 2018?','France','Brazil','Germany','Russia','A',2),
('National  Game Of  Japan?','Baseball','Volleyball','Sumo','Golf','C',2),
('What  Is The Real Name Of Pele?','Edward','Edmund','Edson','All ','B',2),
('Which Country Won The First World Cup? ','Uruguay','Argentina','Brazill','Japan','A',2),
('Who Invented Chess Boxing? ','James Naismith','Lepe Rubingh','Abner Doubleday',' None','B',2),
('2018 Fifa World Cup  Would Be Held In ? ','Russia','Qatar','France','Netherland','A',2),
('Which Country Will Host The 2022 Asian Games? ','South Africa','China','India','Japan','B',2),
('Motto Of The 2018 Asian Games?','Games For Peace','Energy Of Asia','Light Of Asia','To The World,With Love','B',2),
('Who Invented  The First Video Game? ','Ralph Baer','Miyamoto','Warren Spector','Will Wright','A',2),
('Indepedence Movement Of Vietnam Was Headed By?','Ngo Dinh','Zhou Enlai','Pol Pot','Ho Chi Minh','D',3),
('How Many Countries Were Involved In First World War? ','53','30','24','32','4',3),
('Who Was The First Prisident Of The Usa? ','George Washington','Barack Obama','Donald Trump',' Sir Isac Newton','A',3),
('How Many Oscars Did The Titanic  Movie Got?','12','15','11','31','C',3),
('The Frist Novel Prize Was Awarded In? ','1901','1998','1978','1965','A',3),
('Cnn Heroes  Of 2012?','Pushpa Basnet','Marry Cortani','Pen Farthing','Anuradha Koirala','A',3),
('Who Was The First Person To Clim The Mt. Everest?','Edmund Hillary','Tenzing Norgay','Pashang Lamu Sherpa','A And B Both','D',3),
('How Many Countries Are In Asia ? ','35','50','48','45','C',3),
('Which Is The Longest River In The World ?','Nile','Amazon','Yangtze','Niger','A',3),
('Which Is The  Second Largest Country In The World? ','India ','China','Canada','Russia','C',3),
('In Which Country Buddhha Was Born?','India ','Mongolia','China','Nepal','D',4),
('Halong Bay Was Located In?','Vietnam','China','South Korea','Portugal','A',4),
('1st Deepest Lake Is Located In? ','Mogolia','Russia','Spain','Japan','B',4),
('Taj Mahal Was Located In? ','Nepal','Sri Lanka','Bangladesh','India','D',4),
(' Cheapest Country In The World ','Indonesia','Vietnam','Nepal','Bolivia','A',4),
('Smallest Country In The World ','Vatican City','Urugway','Nepal','Bhutan','A',4),
('Everest Is Located In? ','India ','China','Nepal','Swizerland','C',4),
('Cr.Ronaldo Was Born In? ','Argentina','France','Portugal','Sweden','C',4),
('Rowan Atkinson(Mr.Bean) Was Born In? ','Uk','America','Australia','Spain','A',4),
(' National Game Of Japan?','Football','Valleyball','Sumo','Polo','C',5),
('Current President  Of Japan? ','Shinzo  Abe',' Yoshihide Suga','Yamada Abe','None','D',5),
('National Food Of Japan? ','Shushi','Curry Rice','Oden','Yaki Soba','B',5),
('  Mt.Fuji Was Located In?','Shizuoka','Nagasaki','Osaka','Okinawa','A',5),
('2nd Largest City Of Japan? ','Osaka','Yokohama','Tokyo','Fukuoka','B',5),
(' What Is The Name Of The Largest Island In Japan?','Hokkaido','Kyushyu','Honshu','Shikoku','C',5),
('Before Tokyo, Japan Had Several Other Capital Cities. Which Is The Most Recent Previous Capital? ','Kyoto','Osaka','Hirosima','Fukuoka','A',5),
('How Tall Is The Iconic Mount Fuji? ','3456m','3776m','2978m','3776ft','B',5),
('How Many Islands Does Japan Have In Total? ','45','6852','200','3000','B',5),
('What Is Japan`S Population In 2020?','126.5million','128million','300million','37billion','A',5),
('Who Invented The First Computer ?','Charles Babbage','John Vincent','Tommy Flowers','Larry Page ','A',7),
('Google Is Known As','A Browser',' A Search Engine','An Application','Chat Service On The Web','B',7),
('"WWW" Stands For:','World Wide Web','World Wide Wares','Web World Wide','World Web Wide','A',7),
('The First Web Server Was Built In:','1970 In Japan','2000 In Vietnam','1990 In Geneva, Switzerland','1999 In Australia','C',7),
('In Computer Jargon, Ram Refers To','Read Only Menu','Random Access Memory','Random Accent Memory','Read Access Memory','B',7),
('Which Of The Following Is Not A Computer Language?','Windows 98',' Pascal',' C++','Fortran','A',7),
('Computers Calculate Numbers In What Mode?','Binary','Decimal',' Octal','None','A',7),
('Which Of These Is Not A Computer?',' Aptiva',' Macintosh',' Acorn','Pasco','D',7),
('The "Home Page" Of A Web Site Is:',' The Largest Page',' The Last Page','The First Page',' The Most Colorful Page','3',7),
('Html Is Used To:','Plot Complicated Graphs',' Author Web Pages','Translate One Language Into Another','Solve Equations','B',7),
('Which Animal`S Group Is Known As A "Pride"?','Kangaroo','Lion','Tiger','Panda','B',8),
('Which Animal Is The Only Flying Mammal?','Bat','Flying Squirrel','Albatross','All','A',8),
('Which Animal Has Teeth In Its Stomach?','Boa Constrictor','Tarantula','Lobster','None','C',8),
('What`S The Fastest Flying Bird In The World?','Peregrine Falcon','Bat','Swallow','Swift ','A',8),
('The Smallest Bird Alive Is The','Sea Bird','Eagle','Parrot','Hummingbird','D',8),
('The Continent Which Is Known As The Land Of Kangaroo Is','Australia','Indonesia','China','Tropical Africa','A',8),
('How Many Arms Does An Octopus Have','4','7','8','10','C',8),
('Which Bird Is The Symbol Of Peace?','Albatross','Dove','Pigeon','Parrotes','B',8),
('How Many Legs Does A Spider Have?','6','8','10','7','B',8),
('Which Animal Never Sleeps?','Bullfrog','Bat','Owl ','Elephant','A',8),
('<img src="images/hitler.jpg" class="rounded">','Nelson Mandela','Edward Snowden','Adolf Hitler','Al razi','C',1),
('<img src="images/KFC.jpg" class="rounded">','Kentucky Fried Chicken','Mc Donald','Dunkin Donut','Popcorn','A',1),
('<img src="images/galiileo.jpg" class="rounded">','Charles Darwin','Galileo Galilei','Johannes Kepler', 'Leonnardo Da Vinci','B',1),
('<img src="images/jackson.jpg" class="rounded">','Micheal Jackson','Megon Fox','Mila  Kunis','Selena Gomez','A',1),
('<img src="images/florence-nightingale.jpg" class="rounded">','Marie Curie','Anuradha Koirala','Florence Nightingale','Clara Barton','C',1),
('<img src="images/hawking.jpg" class="rounded">','Thomas Edison','Aristotle','Stephen Hawking','Charles RobertDarwin','C',1),
('<img src="images/titanic.jpg" class="rounded">','The Dark Night','Back To The Future','Jaws','Titanic','D',1),
('<img src="images/angelina-jolie.jpg" class="rounded">','Angelina Jolie','Dakota Johnson','Emma Waston','Jessica  Alba','A',1),
('<img src="images/longca.jpg" class="rounded">','Jackie Chan','Bruce Lee','John Cena','Muhammad Ali','B',1),
('<img src="images/passcal.jpg" class="rounded">','Bjarne Stroustrup','Pascal','Yukihiro Matz Matsumoto','Guido van Rossum','B',1),
('<img src="images/argentina.jpg" class="rounded" style="width: 100%;">','Argentina','Morocco','Colombia','Azerbaijan','A',6),
('<img src="images/abanian.jpg" class="rounded" style="width: 100%;">','Japan','kazakhstan','Albania','Baku','C',6),
('<img src="images/Peru.jpg" class="rounded" style="width: 100%;">','Peru','Spain','Taiwan','Argentina','A',6),
('<img src="images/Denmark.jpg" class="rounded" style="width: 100%;">','Finland','Denmark','Turkey','Belize','B',6),
('<img src="images/the-netherlands.jpg" class="rounded" style="width: 100%;">','Burkina Faso','Belgium','The Netherlands','Chile','C',6),
('<img src="images/Germany.jpg" class="rounded" style="width: 100%;">','Germany','Faroe Islands','Nigeria','Russia','A',6),
('<img src="images/findland.jpg" class="rounded" style="width: 100%;">','Venezuela','Finland','Italy','Djibouti','B',6),
('<img src="images/Scotland.jpg" class="rounded" style="width: 100%;">','England','Scotland','Jordan','Ethiopia','B',6),
('<img src="images/autralia.jpg" class="rounded" style="width: 100%;">','Greenland','Australia','New Zealand','Gabon','B',6),
('<img src="images/panama.jpg" class="rounded" style="width: 100%;">','Panama','Russia','Canada','Jordan','A',6)

