-- Listing 16-6

CREATE ASSEMBLY ApressExample
AUTHORIZATION dbo
FROM N'C:\MyApplication\CLRDemo.DLL'
WITH PERMISSION_SET = EXTERNAL_ACCESS;
