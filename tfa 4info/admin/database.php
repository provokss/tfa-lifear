<?php
class Database
{
	
		private static $dbHost = "localhost";
		private static $dbName = "TFA provins dhoryan 4info";
		private static $dbUser = "root";
		private static $dbUserPassword = "";
		private static $connection = null;
		
	public static function connect()
	{
		try
		{
			$connection = new PDO("mysql:host=localhost;dbname=TFA provins dhoryan 4info","root","");
		}
		catch(PDOException $e)
		{
			die($e->getMessage());
		}
		return $connection;
	}
	public static function disconnect()
	{
			$connection=null;
	}
}

?>