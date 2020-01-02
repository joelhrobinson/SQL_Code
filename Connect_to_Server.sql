--	Server type		Database Engine
--	Server Name		P7-1510\SQLEXPRESS03
--	Authentication	Windows
--	UN				P7-1510\JOEL
--	PW				unknown

-- connect to remote SQL Server
--	NEED THE IP ADDRESS

---	THIS DOES NOT WORK
---	THIS DOES NOT WORK
---	THIS DOES NOT WORK
---	THIS DOES NOT WORK
---	THIS DOES NOT WORK

$servername = 'localhost'
$username = 'Joel'
$password = 'Joel'
$conn = new mysqli($servername, $username, $password);


mysqli_close();
mysqli_close($conn);

use Joel


