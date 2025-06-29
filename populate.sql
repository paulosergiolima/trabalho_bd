--this is a test
INSERT INTO empresas (empresa_id, nome, contato) VALUES
    (1,  'TechCorp',        'contato@techcorp.com'),
    (2,  'HomePlus',        'sac@homeplus.com'),
    (3,  'SnackCo',         'atendimento@snackco.com'),
    (4,  'FurniMax',        'vendas@furnimax.com'),
    (5,  'AutoLux',         'suporte@autolux.com'),
    (6,  'SoundWave',       'info@soundwave.com'),
    (7,  'DrinkWell',       'contato@drinkwell.com'),
    (8,  'OfficePro',       'vendas@officepro.com'),
    (9,  'GardenMaster',    'suporte@gardenmaster.com'),
    (10, 'BeautyEssence',   'contato@beautyessence.com'),
    (11, 'PetWorld',        'sac@petworld.com'),
    (12, 'SportZone',       'vendas@sportzone.com'),
    (13, 'BookBarn',        'contato@bookbarn.com'),
    (14, 'GadgetHouse',     'info@gadgethouse.com'),
    (15, 'KitchenMagic',    'atendimento@kitchenmagic.com');

-- 15 produtos com datas de 2020 a 2025
INSERT INTO produtos (produto_id, preco, empresa_id, nome, dia, mes, ano) VALUES
    (1,   199.99, 1,  'Smartphone',             03,  1, 2020),
    (2,    49.90, 2,  'Liquidificador',         14,  2, 2021),
    (3,    15.75, 3,  'Biscoitos',              27,  3, 2020),
    (4,   299.00, 4,  'Mesa de Jantar',         08,  4, 2022),
    (5,  1299.50, 5,  'Bicicleta Elétrica',     19,  5, 2021),
    (6,    89.99, 6,  'Caixa de Som',           25,  6, 2023),
    (7,    25.00, 7,  'Garrafa Térmica',         11,  7, 2022),
    (8,   599.90, 8,  'Cadeira Ergonômica',     30,  8, 2020),
    (9,    39.90, 9,  'Conjunto de Jardim',     05,  9, 2024),
    (10,  79.90, 10, 'Kit de Maquiagem',       16, 10, 2023),
    (11,  29.50, 11, 'Ração Premium',           22, 11, 2021),
    (12, 149.00, 12, 'Tênis Esportivo',        09, 12, 2022),
    (13,  45.00, 13, 'Livro de Romance',       13,  2, 2024),
    (14, 299.99, 14, 'Tablet',                 28,  3, 2025),
    (15,  89.50, 15, 'Jogo de Panelas',        07, 12, 2020);

-- 15 respostas com datas de 2020 a 2025
INSERT INTO resposta (resposta_id, produto, opiniao, estado, dia, mes, ano) VALUES
    (1,   1,  8, 'SP',  10,  1, 2020),
    (2,   2,  5, 'RJ',  21,  2, 2021),
    (3,   3,  7, 'MG',   6,  3, 2020),
    (4,   4, 10, 'BA',  18,  4, 2022),
    (5,   5,  3, 'PR',  23,  5, 2021),
    (6,   6,  6, 'RS',   9,  6, 2023),
    (7,   7,  9, 'SC',  14,  7, 2022),
    (8,   8,  4, 'ES',  31,  8, 2020),
    (9,   9,  2, 'DF',   4,  9, 2024),
    (10, 10,  1, 'GO',  17, 10, 2023),
    (11, 11, 10, 'AM',  26, 11, 2021),
    (12, 12,  5, 'PE',  12, 12, 2022),
    (13, 13,  7, 'CE',   8,  2, 2024),
    (14, 14,  8, 'PA',  29,  3, 2025),
    (15, 15,  3, 'PB',  05, 12, 2020);
