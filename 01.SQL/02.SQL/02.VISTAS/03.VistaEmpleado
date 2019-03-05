-- DROP VIEW VistaEmpleado;
CREATE OR REPLACE VIEW VistaEmpleado AS
SELECT
  p.id_persona
  ,e.id_empleado
  ,e.usuario
  ,p.correo_electronico
  ,e.fecha_ingreso
  ,p.sexo
  ,p.fecha_nacimiento
  ,p.numero_identidad
  ,e.foto_url
  ,e.estado
  ,p.primer_nombre
  ,COALESCE(p.segundo_nombre, '') as segundo_nombre
  ,p.primer_apellido
  ,COALESCE(p.segundo_apellido, '') as segundo_apellido
  ,p.direccion
  ,CONCAT(primer_nombre , (CASE WHEN segundo_nombre is NULL THEN '' ELSE CONCAT(' ', segundo_nombre) END)) as nombres
  ,CONCAT(primer_apellido , (CASE WHEN segundo_apellido IS NULL THEN '' ELSE CONCAT(' ' , segundo_apellido) END)) as apellidos
  ,CONCAT (
    CONCAT(primer_nombre , (CASE WHEN segundo_nombre is NULL THEN '' ELSE CONCAT(' ', segundo_nombre) END)),
    ' ',
    CONCAT(primer_apellido , (CASE WHEN segundo_apellido IS NULL THEN '' ELSE CONCAT(' ' , segundo_apellido) END))
  ) as nombre_completo,
  (
    SELECT
      GROUP_CONCAT(p.pantalla)
    FROM pantalla_tipo_usuario ptu
    INNER JOIN pantalla p
      ON ptu.id_pantalla = p.id_pantalla
    WHERE id_tipo_usuario = e.id_tipo_usuario
  ) as permisos
  ,e.id_tipo_usuario
  ,(SELECT tipo_usuario FROM tipo_usuario WHERE id_tipo_usuario = e.id_tipo_usuario) as tipo_usuario
  ,(
    SELECT
      GROUP_CONCAT(t.telefono, '') as telefono
    FROM telefono_persona tel_per
    INNER JOIN telefono t
      ON tel_per.id_telefono = t.id_telefono
    WHERE tel_per.id_persona = p.id_persona
    GROUP BY
      id_persona
  ) as telefono
FROM persona p
INNER JOIN empleado e
  on p.id_persona = e.id_persona
;

SELECT * FROM VistaEmpleado;