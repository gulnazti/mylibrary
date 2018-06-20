USE test;

DROP TABLE IF EXISTS book;
CREATE TABLE book(
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    printYear INT,
    readAlready BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;

INSERT INTO book (title, description, author, isbn, printYear) VALUES 
('Framley Parsonage', 'When young Mark Robarts was leaving college, his father might well declare that all men began to say all good things to him, and to extol his fortune in that he had a son blessed with an excellent disposition. This father was a physician living at Exeter. He was a gentleman possessed of no private means, but enjoying a lucrative practice, which had enabled him to maintain and educate a family with all the advantages which money can give in this country.', 'Anthony Trollope', '9780576324120', 2001),
('A Tale of Two Cities', 'Published July 25, 2004 by Barnes & Noble Classics. Written in English.', 'Charles Dickens', '9781593081386', 2004),
('Showtime!', 'Raven has a vision that her father will do a disasterous job on a TV cooking show, so she tries to build his confidence, but the results are not what she had intended.', 'Alice Alfonsi', '	9780786846924', 2005),
('Luck, The (The Century Kids)', 'LORRAINE SLID TWO DIMES AND TWO NICKELS across the counter to the cashier, who gave her two pink tickets in return.', 'Dorothy Hoobler', '9780761316022', 2000),
('Run Away Home', 'I walked behind Papa, listening to the dark, listening to the familiar sounds of the Alabama piney wood.', 'Patricia C. Mckissack', '9780590467520', 2001),
('Mississippi bridge', 'During a heavy rainstorm in 1930s rural Mississippi, a ten-year-old white boy sees a bus driver order all the black passengers off a crowded bus to make room for late-arriving white passengers and then set off across the raging Rosa Lee River.', 'Mildred D. Taylor', '9780141308173', 2000),
('Summer growing time', 'June and her grandmother live in their own world absorbed in gardening until growing racial unrest in the town intrudes on their lives.', 'Sally Kelley', '0670681733', 1971),
('The Well. David\'s Story', 'Charlie Simms was always mean, and that\'s the truth of it.', 'Mildred D. Taylor', '9780140386424', 1998),
('The almost year', 'A black girl\'s stay during the school year with a white suburban family sparks off many tensions within the household.', 'Florence Engel Randall', '78134819', 1971),
('Edgar Allan', 'When the Fickett family decides to adopt a little black boy, they are faced with threats, angry phone calls, a burning cross on the lawn, and an ultimatum from their oldest daughter.', 'John Neufeld', '9780141304328', 1999),
('The stones of Mourning Creek', 'In Alabama in the 1960s, fourteen-year-old Francie develops a controversial and dangerous friendship with a "colored girl" her own age.', 'Diane Les Becquets', '9780761452386', 2005),
('The best bad luck I ever had', 'In Moundville, Alabama, in 1917, twelve-year-old Dit hopes the new postmaster will have a son his age, but instead he meets Emma, who is black, and their friendship challenges accepted ways of thinking and leads them to save the life of a condemned man.', 'Kristin Levine', '9450367908783', 2009),
('Free again', 'Sam feels like a hero when she finds a home for a group of mustangs, but is overwhelmed with responsibilities when she agrees to help care for the horses.', 'Terri Farley', '0064410897', 2003),
('Ghost horse of the Palisades', 'Eleven-year-old Molly\'s quiet life on the ranch with her widowered father is enlivened by the reappearance of a mysterious white stallion no one has ever been able to capture.', 'Jean Thompson', '0688061451', 1986),
('Don\'t forget Michael', 'Four episodes in which seven-year-old Michael copes with being the smallest and quietest in a large, clamorous family.', 'Jean Thompson', '0688221963', 1979),
('The nickel-plated beauty', 'In the Washington Territory of 1886, the seven resourceful Kimball children devote themselves to earning enough money to buy their mother a new stove.', 'Patricia Beatty', '0688123600', 1993),
('The best of enemies', 'Anticipating a lonely spring vacation because her parents and grown brothers and sister are preoccupied with their own pursuits, Charlotte becomes involved in their town\'s annual Patriots\' Day celebration.', 'Nancy Bond', '0689501080', 1978),
('Broken days', 'In 1811, life with her Aunt Hannah in Salem, Massachusetts, becomes even more difficult for fourteen-year-old Ebie with the arrival of a half-Indian girl who claims to be the daughter of Hannah\'s sister, Thankful, and with the threat of impending war.', 'Ann Rinaldi', '9780590460545', 1995),
('Mayfield Crossing', 'When the school in Mayfield Crossing is closed, the students are sent to larger schools, where the black children encounter racial prejudice for the first time. Only baseball seems a possibility for drawing people together.', 'Vaunda Micheaux Nelson', '0399223312', 1993),
('A single trail', 'Parallels the lives of a Negro youth beginning a possible journey into crime and a white boy uncertain of his self-image in his new neighborhood.', 'Karen Rose', '0695440829', 1969),
('A day for Vincent Chin and me', 'Although Tommy, a Japanese-American sixth-grader, has serious doubts when his mother starts organizing a rally to fight racism, once he and his friends find a cause of their own he gains more understanding of her motives.', 'Jacqueline Turner Banks', '061813199X', 2001),
('Here today', 'In 1963, when her flamboyant mother abandons the family to pursue her dream of becoming an actress, eleven-year-old Ellie Dingman takes charge of her younger siblings, while also trying to deal with her outcast status in school and frightening acts of prejudice toward the "misfits" that live on her street.', 'Ann M. Martin', '0439579449', 2004);