SELECT b.title, p.name 
FROM publisher p , books b
WHERE p.country="UK" AND p.id=b.publisher;
