<cfscript>
  queryExecute( "DROP DATABASE IF EXISTS `cfswarm-simple-cfml`" );
  queryExecute( "CREATE DATABASE `cfswarm-simple-cfml`" );
  queryExecute( "USE `cfswarm-simple-cfml`" );
  queryExecute( "
     CREATE TABLE `countries` (
       `id` char(35) NOT NULL,
       `name` varchar(50) NOT NULL,
       `created_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
       `modified_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
      )
  " );
  queryExecute( "
    INSERT INTO `countries` (`id`, `name`, `created_date`, `modified_date`) VALUES ('02B84D66-0AA0-F7FB-1F71AFC954843861', 'United States', '2017-07-28 02:07:00', '2017-07-28 02:07:00')
  " );

  countries = queryExecute("Select * FROM countries");
</cfscript>

<html>
<head>
  <title>Your Simple CFML DB-Enabled Application</title>
</head>

<body>
<h1>It's a Simple CF Application!</h1>
<p>Hello, World! Let's CFDUMP a database table!</p>
<cfdump var="#countries#">
</body>