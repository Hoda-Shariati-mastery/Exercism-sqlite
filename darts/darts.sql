-- Insert values into the darts table
INSERT INTO darts (x, y) VALUES
    (5, 5),
    (10, 10),
    (2, 2);

-- Update the darts table, setting the score based on the x and y values
UPDATE darts
SET score = CASE
    WHEN sqrt(x*x + y*y) > 10 THEN 0   -- Outside the target
    WHEN sqrt(x*x + y*y) > 5 THEN 1    -- Outer circle (radius > 5)
    WHEN sqrt(x*x + y*y) > 1 THEN 5    -- Middle circle (1 < radius <= 5)
    ELSE 10                            -- Inner circle (radius <= 1)
END;

