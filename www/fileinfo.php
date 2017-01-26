<?php
error_reporting(E_ALL ^ E_WARNING); 
header('Content-type: application/json');

if (isset($_GET['filename']))
{
	$filename = $_GET['filename'];
}
if (isset($_GET['filesize']))
{
	$filesize = $_GET['filesize'];
}

$filepath = $_SERVER['HTTP_X_FILE'];

# fix for nginx windows version
if (strpos($filepath, 'cygdrive') !== false) {
	$pattern = '/(\/cygdrive\/)([a-zA-Z]{1})/i';
	$replacement = '$2:';
	$filepath = preg_replace($pattern, $replacement, $filepath);
}

$data = array( 'fileId' => basename($filepath), 'filePath' => $filepath, 'fileName' => $filename, 'fileSize' => $filesize );

echo json_encode( $data );
?>