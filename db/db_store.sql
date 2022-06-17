CREATE DATABASE db_store;

USE db_store;

CREATE TABLE tb_category (
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    value FLOAT(4,2) NOT NULL,
    category_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_category (name, description)
VALUES
('Informática', 'Produtos de Informática, acessórios e peças para computador'),
('Escritório', 'Canetas, Cadernos, Folhas e etc'),
('Eletrônicos', 'TVs, Som portátil, Caixas de Som, etc');

INSERT INTO tb_product (name, description, photo, price, category_id, quantity, created_at)
VALUES
('Mouse Gamer Redragon Cobra', '12400DPI, 7 Botões, Preto', 'https://www.amazon.com.br/Mouse-Redragon-Chroma-12400DPI-Bot%C3%B5es/dp/B07Q437WXK/ref=zg_bs_16364766011_1/133-6550654-7143629?pd_rd_i=B07Q437WXK&psc=1', '117.53', '1', '100', '2022-05-10 09:30:34'),
('Headset Gamer Blackfire', 'Preto FORTREK', 'https://www.amazon.com.br/Headset-Gamer-Blackfire-Preto-FORTREK/dp/B089ZZD4N7/ref=zg_bs_16364766011_2/133-6550654-7143629?pd_rd_i=B089ZZD4N7&psc=1', '129.00', '2', '100', '2022-05-10 09:30:34'),
('Mouse Gamer lOGITECH g403', '6 Botões, Ajuste de Peso', 'https://www.amazon.com.br/Mouse-Gamer-Logitech-G403-Hero/dp/B07W6PD7QJ/ref=zg_bs_16364766011_3/133-6550654-7143629?pd_rd_i=B07W6PD7QJ&psc=1', '179.90', '3', '100', '2022-05-10 09:30:34'),
('Mouse Gamer Multilaser com Fio', '3200DPI, 6 Botões, Preto', 'https://www.amazon.com.br/Mouse-Gamer-Multilaser-3200DPI-Bot%C3%B5es/dp/B07W817YXD/ref=zg_bs_16364766011_4/133-6550654-7143629?pd_rd_i=B07W817YXD&psc=1', '49.00', '4', '100', '2022-05-10 09:30:34'),
('Headset Warrior - Ph219', 'Vermelho com LED', 'https://www.amazon.com.br/Ouvido-Headset-Gamer-Warrior-Vermelho/dp/B074XJ8PY5/ref=zg_bs_16364766011_5/133-6550654-7143629?pd_rd_i=B074XJ8PY5&psc=1', '88.90', '5', '100', '2022-05-10 09:30:34'),
('Mouse Gamer HP M160', '100DPI, Iluminação Multicolor', 'https://www.amazon.com.br/Mouse-Redragon-Chroma-12400DPI-Bot%C3%B5es/dp/B07Q437WXK/ref=zg_bs_16364766011_1/133-6550654-7143629?pd_rd_i=B07Q437WXK&psc=1', '109.90', '6', '100', '2022-05-10 09:30:34'),
('Mouse Gamer Logitech G305', '12000DPI, 6 Botões, Preto', 'https://www.amazon.com.br/Logitech-LIGHTSPEED-Bot%C3%B5es-Program%C3%A1veis-12-000/dp/B07GPRWFC5/ref=zg_bs_16364766011_7/133-6550654-7143629?pd_rd_i=B07GPRWFC5&psc=1', '243.53', '7', '100', '2022-05-10 09:30:34'),
('Headset Gamer Multilaser PH146', 'Verde, Controle de volume', 'https://www.amazon.com.br/Multilaser-PH146-Cancelamento-Ajust%C3%A1vel-Microfone/dp/B074XGYKLS/ref=zg_bs_16364766011_8/133-6550654-7143629?pd_rd_i=B074XGYKLS&psc=1', '29.90', '8', '100', '2022-05-10 09:30:34'),
('Mouse Gamer Sem fio Logitech G703', 'Sensor HERO 25K, 6 Botões, Bateria Recarregável', 'https://www.amazon.com.br/Mouse-Gamer-Logitech-G703-Hero/dp/B07W8X4F48/ref=zg_bs_16364766011_9/133-6550654-7143629?pd_rd_i=B07W8X4F48&psc=1', '431.70', '9', '100', '2022-05-10 09:30:34'),
('Mouse Gamer HP USB M160', '100DPI, Iluminação multicolor, Preto', 'https://www.amazon.com.br/MOUSE-GAMER-HP-MULTICORES-PRETO/dp/B0827JHZN9/ref=zg_bs_16364766011_10/133-6550654-7143629?pd_rd_i=B0827JHZN9&psc=1', '46.90', '10', '100', '2022-05-10 09:30:34'),
('Headset Gamer HyperX Cloud Stringer Core', 'PS4 Xbox One Nintendo Switch', 'https://www.amazon.com.br/Headset-HyperX-Stinger-Nintendo-Switch/dp/B07BB3PYD8/ref=zg_bs_16364766011_11/133-6550654-7143629?pd_rd_i=B07BB3PYD8&psc=1', '224.87', '11', '100', '2022-05-10 09:30:34'),
('Controle de jogos com fio Logitech F310', 'PC e TV', 'https://www.amazon.com.br/Controle-Logitech-Joysticks-Controles-Computador/dp/B003VAHYQY/ref=zg_bs_16364766011_12/133-6550654-7143629?pd_rd_i=B003VAHYQY&psc=1', '170.34', '12', '100', '2022-05-10 09:30:34'),
('Mouse Gamer sem fio Logitech G Pro', 'Tecnologia LightSpeed, 5 Botões, Sensor HERO 25K', 'https://www.amazon.com.br/Logitech-PRO-SUPERLIGHT-Program%C3%A1veis-Recarreg%C3%A1vel/dp/B08TLZ8Z4F/ref=zg_bs_16364766011_13/133-6550654-7143629?pd_rd_i=B08TLZ8Z4F&psc=1', '684.28', '13', '100', '2022-05-10 09:30:34'),
('Mouse Gamer FORTREK Pro M7', '5 Botões, Preto', 'https://www.amazon.com.br/Mouse-Gamer-M7-Fortrek-Mouses/dp/B07FMF4MMP/ref=zg_bs_16364766011_14/133-6550654-7143629?pd_rd_i=B07FMF4MMP&psc=1', '58.57', '14', '100', '2022-05-10 09:30:34'),
('Mouse Gamer FORTREK Cruzer', 'Com fio, Preto', 'https://www.amazon.com.br/Headset-Gamer-Crusader-Preto-FORTREK/dp/B089ZYPFS8/ref=zg_bs_16364766011_15/133-6550654-7143629?pd_rd_i=B089ZYPFS8&psc=1', '130.56', '15', '100', '2022-05-10 09:30:34'),
('Headphone Havit HV-H2232d', 'Iluminação RGB, com Microfone', 'https://www.amazon.com.br/Headphone-HV-H2232d-Ilumina%C3%A7%C3%A3o-Microfone-Conector/dp/B07N78G8GB/ref=zg_bs_16364766011_16/133-6550654-7143629?pd_rd_i=B07N78G8GB&psc=1', '134.45', '16', '100', '2022-05-10 09:30:34'),
('Teclado Mecânico Knup', 'Abnt2, Preto', 'https://www.amazon.com.br/Teclado-Mec%C3%A2nico-Antighosting-Remov%C3%ADveis-Knup/dp/B096YP6RJW/ref=zg_bs_16364766011_17/133-6550654-7143629?pd_rd_i=B096YP6RJW&psc=1', '139.99', '17', '100', '2022-05-10 09:30:34'),
('Headset Gamer JBL Quantum 300', 'Com fio, Preto', 'https://www.amazon.com.br/Headset-Gamer-JBL-Quantum-300/dp/B083X3LTHH/ref=zg_bs_16364766011_18/133-6550654-7143629?pd_rd_i=B083X3LTHH&psc=1', '299.00', '18', '100', '2022-05-10 09:30:34'),
('Mouse Gamer Razer Deathadder', 'Wifi/Com fio, 5 Botões, Preto', 'https://www.amazon.com.br/Mouse-Razer-Deathadder-Essential-Windows/dp/B09GSN9YMG/ref=zg_bs_16364766011_20/133-6550654-7143629?pd_rd_i=B09GSN9YMG&psc=1', '114.25', '19', '100', '2022-05-10 09:30:34'),
('Mouse Gamer Redragon Scylla H901', 'Com fio, Preto', 'https://www.amazon.com.br/Headset-Scylla-H901-Redragon-Microfones/dp/B079FXXWV6/ref=zg_bs_16364766011_21/133-6550654-7143629?pd_rd_i=B079FXXWV6&psc=1', '139.00', '20', '100', '2022-05-10 09:30:34');
-- Caso for pedido inserir os dados criados acima --

