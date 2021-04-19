CREATE TABLE [dbo].[Tasks]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(150) NOT NULL, 
    [isDone] BIT NULL, 
    [CreationDate] DATETIME NULL DEFAULT GetDate()
)
