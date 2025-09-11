-- ===================================================================
-- Consultas_Analisis.sql
-- Contiene las 4 consultas de negocio para analizar
--              el Data Warehouse Chinook_DW.
-- ===================================================================

USE Chinook_DW;
GO

-- Consulta 1: Total de ventas por cliente
PRINT '--- 1. TOTAL DE VENTAS POR CLIENTE ---';
SELECT
    c.Nombre,
    c.Apellido,
    SUM(fv.MontoTotal) AS TotalVentas
FROM
    dbo.Fact_Ventas AS fv
INNER JOIN
    dbo.Dim_Cliente AS c ON fv.ClienteKey = c.ClienteKey
GROUP BY
    c.Nombre, c.Apellido
ORDER BY
    TotalVentas DESC;
GO

-- Consulta 2: Total de ventas por género musical
PRINT '--- 2. TOTAL DE VENTAS POR GENERO MUSICAL ---';
SELECT
    g.NombreGenero,
    SUM(fv.MontoTotal) AS TotalVentas
FROM
    dbo.Fact_Ventas AS fv
INNER JOIN
    dbo.Dim_Genero AS g ON fv.GeneroKey = g.GeneroKey
GROUP BY
    g.NombreGenero
ORDER BY
    TotalVentas DESC;
GO

-- Consulta 3: Total de ventas por artista
PRINT '--- 3. TOTAL DE VENTAS POR ARTISTA ---';
SELECT
    a.NombreArtista,
    SUM(fv.MontoTotal) AS TotalVentas
FROM
    dbo.Fact_Ventas AS fv
INNER JOIN
    dbo.Dim_Artista AS a ON fv.ArtistaKey = a.ArtistaKey
GROUP BY
    a.NombreArtista
ORDER BY
    TotalVentas DESC;
GO

-- Consulta 4: Total de ventas por país
PRINT '--- 4. TOTAL DE VENTAS POR PAIS ---';
SELECT
    g.Pais,
    SUM(fv.MontoTotal) AS TotalVentas
FROM
    dbo.Fact_Ventas AS fv
INNER JOIN
    dbo.Dim_Geografia AS g ON fv.GeografiaKey = g.GeografiaKey
GROUP BY
    g.Pais
ORDER BY
    TotalVentas DESC;
GO