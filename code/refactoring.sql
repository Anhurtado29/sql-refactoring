UPDATE item
SET
    quality = quality - 1
WHERE name NOT IN ('Aged Brie', 'Backstage passes to a TAFKAL80ETC concert', 'Sulfuras, Hand of Ragnaros')
    AND quality > 0;
    
    UPDATE item
SET quality = quality + 1
WHERE name = 'Aged Brie' 
   OR (name = 'Backstage passes to a TAFKAL80ETC concert' 
       AND sellIn < 11 
       AND quality < 50)
   AND quality < 50;
   
   UPDATE item
SET quality = quality + 1
WHERE name = 'Aged Brie'
      OR (name = 'Backstage passes to a TAFKAL80ETC concert' 
          AND sellIn < 6 
          AND quality < 50);

UPDATE item
SET
    sellIn = sellIn - 1
  AND  name <> 'Sulfuras, Hand of Ragnaros';
  
  UPDATE item
SET quality = quality - 1
WHERE sellIn < 0 
      AND name NOT IN ('Aged Brie', 'Backstage passes to a TAFKAL80ETC concert', 'Sulfuras, Hand of Ragnaros')
      AND quality > 0;
      
      UPDATE item
SET quality = 0
WHERE sellIn < 0 
      AND name <> 'Aged Brie' 
      AND name = 'Backstage passes to a TAFKAL80ETC concert';

UPDATE item
SET quality = LEAST(50, quality + 1)
WHERE sellIn < 0 
      AND name = 'Aged Brie'
      AND quality < 50 
      AND name <> 'Sulfuras, Hand of Ragnaros';
