--- how to read system logs

use Joel

--- returns 129 columns of data
select top 3 * from sys.fn_dblog (NULL, NULL)

select top 3 * from sys.fn_dblog   (NULL, NULL)where operation in ('LOP_INSERT_ROWS')	--	find inserted rows

select top 3 * from sys.fn_dblog   (NULL, NULL)where operation in ('LOP_DELETE_ROWS')	--	find deleted rows

