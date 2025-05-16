-- Active: 1747406338289@@127.0.0.1@5432@ph
SELECT * FROM enrollment;

ALTER TABLE enrollment
    ADD COLUMN courseName VARCHAR(50) NOT NULL;

INSERT INTO enrollment VALUES (5, 'saidul', 'Saidul Islam', 'exam@gmail.com', 23, 'TypeScript Technocrat');

ALTER TABLE enrollment
    DROP COLUMN courseName
