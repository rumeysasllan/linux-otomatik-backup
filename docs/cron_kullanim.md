# Cron Kullanimi ()

Cron, Linux/Unix sistemlerinde belirli zamanlarda komut veya script calistirmak icin kullanilan zamanlayicidir.


- crontab -e  → Gorev duzenleme
- crontab -l  → Gorev listeleme
- crontab -r  → Gorev silme


Dakika Saat Gun(Ay) Ay Gun(Hafta)

Ornek:
*/5 * * * *
Her 5 dakikada bir calisir.

## Ornek Zamanlama
Her gun saat 22:00:

0 22 * * * /home/kullanici/linux-otomatik-backup/src/backup.sh "/home/kullanici/veriler" "/home/kullanici/backups"

## Not
Bu proje Windows ortaminda gelistirilmistir. Cron kullanimi Linux sistemlerde calisir. Bu nedenle cron senaryolari teorik olarak dokumante edilmistir.
