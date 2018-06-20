--CREATE PROCEDURE SmartphoneCount @PageNum INT = 1, @PageSize INT = 9, @PageCount INT OUTPUT
--AS
--BEGIN
--SET NOCOUNT ON;
--SELECT ROW_NUMBER() OVER 
--(
--                  ORDER BY id_Smartphone ASC
--            )AS RowNumber
--			,id_Smartphone
--			,Nombre
--			,Imagen
--    INTO #Results
--      FROM Smartphone
     
--      DECLARE @RecordCount INT
--      SELECT @RecordCount = COUNT(*) FROM #Results
 
--      SET @PageCount = CEILING(CAST(@RecordCount AS DECIMAL(10, 2)) / CAST(@PageSize AS DECIMAL(10, 2)))
--      PRINT       @PageCount
           
--      SELECT * FROM #Results
--      WHERE RowNumber BETWEEN(@PageNum -1) * @PageSize + 1 AND(((@PageNum -1) * @PageSize + 1) + @PageSize) - 1
     
--      DROP TABLE #Results
--END


ALTER PROCEDURE vPhones
AS
BEGIN
SELECT S.id_Smartphone, S.Nombre, S.Imagen, F.Descripcion 'Fabricante'
FROM Smartphone S
INNER JOIN Fabricante F ON S.id_Fabricante = F.id_Fabricante
ORDER BY F.id_Fabricante
END
