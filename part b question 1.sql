create table television (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number INTEGER UNIQUE,
    brand text check (brand in ('Samsung', 'LG', 'Sony')),
    model text,
    screen_size INTEGER,
    resolution text check (resolution in ('4K', '8K', 'Full HD')),
    price INTEGER,
    stock_quantity INTEGER,
    release_year INTEGER,
    smart_tv text check (smart_tv in ('YES', 'NO')),
    os text,
    panel_type text check (panel_type in ('OLED', 'QLED', 'LED'))
);

insert into television
(catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
values
(100, 'Samsung', 'abc', 20, '4K', 1000, 1, 2024, 'YES', 'Tizen', 'QLED'),
(200, 'LG', 'bcd', 30, '8K', 2000, 2, 2025, 'YES', 'Tizen', 'OLED'),
(300, 'Sony', 'cde', 40, 'Full HD', 3000, 3, 2026, 'NO', NULL, 'LED');