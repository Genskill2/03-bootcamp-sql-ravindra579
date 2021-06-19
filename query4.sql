select s.name from books b, subjects s, books_subjects k where k.book=b.id and k.subject=s.id and b.title="Atomic Habits";

