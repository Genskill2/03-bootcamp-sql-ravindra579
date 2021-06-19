INSERT INTO publisher (name,country) VALUES("PHI","India");
INSERT INTO publisher (name,country) VALUES("Harper","USA");
INSERT INTO publisher (name,country) VALUES("GCP","USA");
INSERT INTO publisher (name,country) VALUES("Avery","USA");
INSERT INTO publisher (name,country) VALUES("Del Rey","UK");
INSERT INTO publisher (name,country) VALUES("Vintage","UK");

INSERT INTO books (title,publisher) VALUES("The C Programming Language",(SELECT id FROM publisher WHERE publisher.name="PHI"));
INSERT INTO books (title,publisher) VALUES("The Go Programming Language",(SELECT id FROM publisher WHERE publisher.name="PHI"));
INSERT INTO books (title,publisher) VALUES("The UNIX Programming Environment",(SELECT id FROM publisher WHERE publisher.name="PHI"));
INSERT INTO books (title,publisher) VALUES("Cryptonomicon",(SELECT id FROM publisher WHERE publisher.name="Harper"));
INSERT INTO books (title,publisher) VALUES("Deep Work",(SELECT id FROM publisher WHERE publisher.name="GCP"));
INSERT INTO books (title,publisher) VALUES("Atomic Habits",(SELECT id FROM publisher WHERE publisher.name="Avery"));
INSERT INTO books (title,publisher) VALUES("The City and The City",(SELECT id FROM publisher WHERE publisher.name="Del Rey"));
INSERT INTO books (title,publisher) VALUES("The Great War for Civilisation",(SELECT id FROM publisher WHERE publisher.name="Vintage"));

INSERT INTO subjects (name) VALUES("C");
INSERT INTO subjects (name) VALUES("UNIX");
INSERT INTO subjects (name) VALUES("Technology");
INSERT INTO subjects (name) VALUES("GO");
INSERT INTO subjects (name) VALUES("Science Fiction");
INSERT INTO subjects (name) VALUES("Productivity");
INSERT INTO subjects (name) VALUES("Psychology");
INSERT INTO subjects (name) VALUES("Politics");
INSERT INTO subjects (name) VALUES("History");

INSERT INTO books_subjects(book,subject) VALUES ((SELECT id FROM books WHERE books.title="The C Programming Language"),(SELECT id FROM subjects WHERE subjects.name="C")),
((SELECT id FROM books WHERE books.title="The C Programming Language"),(SELECT id FROM subjects WHERE subjects.name="UNIX")), 
((SELECT id FROM books WHERE books.title="The C Programming Language"),(SELECT id FROM subjects WHERE subjects.name="Technology")),

((SELECT id FROM books WHERE books.title="The Go Programming Language"),(SELECT id FROM subjects WHERE subjects.name="GO")), 
((SELECT id FROM books WHERE books.title="The Go Programming Language"),(SELECT id FROM subjects WHERE subjects.name="Technology")), 

((SELECT id FROM books WHERE books.title="The UNIX Programming Environment"),(SELECT id FROM subjects WHERE subjects.name="UNIX")),
((SELECT id FROM books WHERE books.title="The UNIX Programming Environment"),(SELECT id FROM subjects WHERE subjects.name="Technology")),

((SELECT id FROM books WHERE books.title="Cryptonomicon"),(SELECT id FROM subjects WHERE subjects.name="Technology")),
((SELECT id FROM books WHERE books.title="Cryptonomicon"),(SELECT id FROM subjects WHERE subjects.name="Science Fiction")),

((SELECT id FROM books WHERE books.title="Deep Work"),(SELECT id FROM subjects WHERE subjects.name="Technology")),
((SELECT id FROM books WHERE books.title="Deep Work"),(SELECT id FROM subjects WHERE subjects.name="Productivity")),

((SELECT id FROM books WHERE books.title="Atomic Habits"),(SELECT id FROM subjects WHERE subjects.name="Productivity")),
((SELECT id FROM books WHERE books.title="Atomic Habits"),(SELECT id FROM subjects WHERE subjects.name="Psychology")),

((SELECT id FROM books WHERE books.title="The City and The City"),(SELECT id FROM subjects WHERE subjects.name="Science Fiction")),
((SELECT id FROM books WHERE books.title="The City and The City"),(SELECT id FROM subjects WHERE subjects.name="Politics")),

((SELECT id FROM books WHERE books.title="The Great War for Civilisation"),(SELECT id FROM subjects WHERE subjects.name="Politics")),
((SELECT id FROM books WHERE books.title="The Great War for Civilisation"),(SELECT id FROM subjects WHERE subjects.name="History"));

