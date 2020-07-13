<?php

    include_once('resources/correo/class.phpmailer.php');
    include_once('resources/correo/class.smtp.php');

    // Configuración mail.ini
    $mail_ini = parse_ini_file('mail.ini', false)

    $para = $mail_ini["para"];
    // Este bloque es importante
    $mail = new PHPMailer();
    $mail->IsSMTP();
    $mail->isHTML(true);
    $mail->SMTPAuth = true;
    $mail->SMTPDebug = 2;
    $mail->SMTPSecure = "ssl";
    $mail->Host = $mail_ini["host"];
    $mail->Port = $mail_ini["port"];

    // Nuestra cuenta
    $mail->Username = $mail_ini["username"];
    $mail->Password = $mail_ini["password"];

    // Agregar destinatario
    $mail->AddAddress($para);
    $mail->Subject = 'Cita confirmada';
    $mail->Body = "correo de prueba de sendgrid" ;

    // Avisar si fue enviado o no y dirigir al index
    if ($mail->Send()) {
        echo "correo enviado" ;
    } else {
        echo "error al enviar correo";
    }
