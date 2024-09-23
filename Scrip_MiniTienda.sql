-- Categorias
-- Insertar
DELIMITER //
create procedure procInsertCategory(IN v_description VARCHAR(45))
begin
      insert into tbl_categorias(cat_descripcion) values(v_description);
end//
DELIMITER ;
-- Actualizar
DELIMITER //
create procedure procUpdateCategory(IN v_id INT ,IN v_descripcion VARCHAR(45))
begin
     update tbl_categorias
     set cat_descripcion = v_descripcion
     where cat_id = v_id;
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectCategory()
begin
     select cat_id, cat_descripcion from tbl_categorias;
end//
DELIMITER ;
-- Eliminar
DELIMITER //
create procedure procDeleteCategory(IN v_id INT)
begin
     delete from tbl_categorias where cat_id = v_id;
end//
DELIMITER ;
-- Proveedores
-- Insertar
DELIMITER //
CREATE PROCEDURE procInsertProviders(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(45))
BEGIN
    INSERT INTO tbl_proveedores(prov_nit, prov_nombre) VALUES (v_nit, v_nombre);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateProviders(IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(45))
BEGIN
    UPDATE tbl_proveedores
    SET prov_nit = v_nit, prov_nombre = v_nombre
    WHERE prov_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectProviders()
BEGIN
    SELECT prov_id, prov_nit, prov_nombre FROM tbl_proveedores;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteProviders(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedores WHERE prov_id = v_id;
END //
DELIMITER ;
-- Productos

-- Usuarios
