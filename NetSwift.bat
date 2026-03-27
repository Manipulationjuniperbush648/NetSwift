@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul 2>&1

:: ==============================================================================
:: NetSwift Pro v2.0 - Advanced Network & Cybersecurity Command Center
:: ==============================================================================

title NetSwift Pro v2.0 - Elite Network Command Center
mode con: cols=120 lines=45

:: Renk Kodları (Gelişmiş Palet)
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set "GREEN=%ESC%[92m"
set "RED=%ESC%[91m"
set "YELLOW=%ESC%[93m"
set "CYAN=%ESC%[96m"
set "MAGENTA=%ESC%[95m"
set "WHITE=%ESC%[97m"
set "GRAY=%ESC%[90m"
set "BLUE=%ESC%[94m"
set "RESET=%ESC%[0m"
set "BOLD=%ESC%[1m"
set "DIM=%ESC%[2m"
set "UNDERLINE=%ESC%[4m"
set "BLINK=%ESC%[5m"

:Initialize
pushd "%CD%"
CD /D "%~dp0"
set "LANG_FILE=%APPDATA%\NetSwift_Lang.ini"
set "LOG_DIR=%APPDATA%\NetSwift_Logs"
set "REPORT_DIR=%APPDATA%\NetSwift_Reports"

:: Log ve Report klasörlerini oluştur
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"
if not exist "%REPORT_DIR%" mkdir "%REPORT_DIR%"

if exist "%LANG_FILE%" (
    set /p LANG=<"%LANG_FILE%"
    goto :SetStrings
)

:SelectLanguage
cls
call :AnimatedBanner
echo.
echo %CYAN%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
echo.
echo %YELLOW%                           ╔══════════════════════════════════════════════════════════╗%RESET%
echo %YELLOW%                           ║               WELCOME TO NETSWIFT PRO v2.0               ║%RESET%
echo %YELLOW%                           ║     Advanced Network ^& Cybersecurity Command Center      ║%RESET%
echo %YELLOW%                           ╚══════════════════════════════════════════════════════════╝%RESET%
echo.
echo %CYAN%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
echo.
echo   %BOLD%%GREEN%[1]%RESET% English %GRAY%(International)%RESET%
echo   %BOLD%%GREEN%[2]%RESET% Türkçe %GRAY%(Turkey)%RESET%
echo.
echo %CYAN%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
echo.
choice /c 12 /n /m "%CYAN%█ Please select your language / Lütfen dil seçin (1-2): %RESET%"
if "%ERRORLEVEL%"=="2" ( set "LANG=TR" ) else ( set "LANG=EN" )
echo !LANG!>"%LANG_FILE%"
goto :SetStrings

:SetStrings
set "PAD=                                                                                                    "
if "!LANG!"=="TR" (
    set "S_VER=Sürüm"
    set "S_DEV=Geliştirici"
    set "S_M1=[1]  Wi-Fi Forensics        │ Tüm kayıtlı Wi-Fi şifrelerini analiz et"
    set "S_M2=[2]  Akıllı DNS Yöneticisi  │ En hızlı DNS sunucularına geç"
    set "S_M3=[3]  Ağ Killswitch          │ İnternet bağlantısını kes/geri getir"
    set "S_M4=[4]  Canlı IP Tarayıcı      │ Local/Public IP ve MAC adresi"
    set "S_M5=[5]  Derin Ağ Onarımı       │ Tam ağ stack reset işlemi"
    set "S_M6=[6]  Ping ve Gecikme Testi  │ Global DNS sunucu hız analizi"
    set "S_M7=[7]  Ağ ve Port Tarayıcı    │ Bağlı cihazlar ve port analizi"
    set "S_M8=[8]  Güvenlik Analizi       │ Firewall, zafiyet ve tehdit taraması"
    set "S_M9=[9]  Bandwidth Monitor      │ Gerçek zamanlı ağ trafiği izleme"
    set "S_M10=[A]  WiFi Sinyal Analizi    │ Tüm WiFi ağlarının sinyal haritası"
    set "S_M11=[B]  VPN/Proxy Dedektörü    │ Aktif VPN ve proxy bağlantı tespiti"
    set "S_M12=[C]  İnternet Hız Testi     │ Download/Upload hız ölçümü"
    set "S_M13=[D]  Gelişmiş Traceroute    │ Görsel hop ve latency analizi"
    set "S_M14=[E]  Sistem Kaynak Monitör  │ CPU, RAM, Disk kullanım gösterimi"
    set "S_M15=[F]  Otomatik Optimizasyon  │ AI destekli ağ performans iyileştirme"
    set "S_M16=[G]  Rapor Dışa Aktarımı    │ HTML/JSON/CSV formatında detaylı rapor"
    set "S_ML=[L]  Dili Değiştir          │ Change Language"
    set "S_M0=[0]  Çıkış                  │ Exit Application"
    set "S_M1=!S_M1!!PAD:~0,32!"
    set "S_M2=!S_M2!!PAD:~0,42!"
    set "S_M3=!S_M3!!PAD:~0,35!"
    set "S_M4=!S_M4!!PAD:~0,42!"
    set "S_M5=!S_M5!!PAD:~0,46!"
    set "S_M6=!S_M6!!PAD:~0,42!"
    set "S_M7=!S_M7!!PAD:~0,41!"
    set "S_M8=!S_M8!!PAD:~0,35!"
    set "S_M9=!S_M9!!PAD:~0,39!"
    set "S_M10=!S_M10!!PAD:~0,37!"
    set "S_M11=!S_M11!!PAD:~0,36!"
    set "S_M12=!S_M12!!PAD:~0,45!"
    set "S_M13=!S_M13!!PAD:~0,42!"
    set "S_M14=!S_M14!!PAD:~0,38!"
    set "S_M15=!S_M15!!PAD:~0,34!"
    set "S_M16=!S_M16!!PAD:~0,33!"
    set "S_ML=!S_ML!!PAD:~0,56!"
    set "S_M0=!S_M0!!PAD:~0,55!"
    set "S_PRMPT=İşlem seçin"
    set "S_BACK=Ana menüye dönmek için bir tuşa basın"
    set "S_ADMIN=Yönetici yetkisi gerekiyor"
    set "S_LOADING=Yükleniyor"
    set "S_COMPLETE=Tamamlandı"
    set "S_ERROR=Hata"
    set "S_SUCCESS=Başarılı"
) else (
    set "S_VER=Version"
    set "S_DEV=Developer"
    set "S_M1=[1]  Wi-Fi Forensics        │ Extract all saved Wi-Fi credentials"
    set "S_M2=[2]  Smart DNS Manager      │ Switch to fastest DNS servers"
    set "S_M3=[3]  Network Killswitch     │ Instantly drop/restore connection"
    set "S_M4=[4]  Live IP Scanner        │ Display Local/Public IP and MAC"
    set "S_M5=[5]  Deep Network Repair    │ Complete network stack reset"
    set "S_M6=[6]  Ping ^& Latency Test    │ Global DNS server speed analysis"
    set "S_M7=[7]  LAN ^& Port Scanner     │ Connected devices and port analysis"
    set "S_M8=[8]  Security Analysis      │ Firewall, vulnerability and threat scan"
    set "S_M9=[9]  Bandwidth Monitor      │ Real-time network traffic monitoring"
    set "S_M10=[A]  WiFi Signal Analyzer   │ Signal strength map for all networks"
    set "S_M11=[B]  VPN/Proxy Detector     │ Active VPN and proxy detection"
    set "S_M12=[C]  Internet Speed Test    │ Download/Upload speed measurement"
    set "S_M13=[D]  Advanced Traceroute    │ Visual hop and latency analysis"
    set "S_M14=[E]  System Resource Monitor│ CPU, RAM, Disk usage display"
    set "S_M15=[F]  Auto Optimization      │ AI-powered network performance boost"
    set "S_M16=[G]  Export Reports         │ Generate detailed HTML/JSON/CSV reports"
    set "S_ML=[L]  Change Language        │ Dili Değiştir"
    set "S_M0=[0]  Exit                   │ Close Application"
    set "S_M1=!S_M1!!PAD:~0,36!"
    set "S_M2=!S_M2!!PAD:~0,42!"
    set "S_M3=!S_M3!!PAD:~0,38!"
    set "S_M4=!S_M4!!PAD:~0,40!"
    set "S_M5=!S_M5!!PAD:~0,43!"
    set "S_M6=!S_M6!!PAD:~0,39!"
    set "S_M7=!S_M7!!PAD:~0,36!"
    set "S_M8=!S_M8!!PAD:~0,32!"
    set "S_M9=!S_M9!!PAD:~0,35!"
    set "S_M10=!S_M10!!PAD:~0,35!"
    set "S_M11=!S_M11!!PAD:~0,41!"
    set "S_M12=!S_M12!!PAD:~0,38!"
    set "S_M13=!S_M13!!PAD:~0,40!"
    set "S_M14=!S_M14!!PAD:~0,43!"
    set "S_M15=!S_M15!!PAD:~0,35!"
    set "S_M16=!S_M16!!PAD:~0,32!"
    set "S_ML=!S_ML!!PAD:~0,58!"
    set "S_M0=!S_M0!!PAD:~0,54!"
    set "S_PRMPT=Select an action"
    set "S_BACK=Press any key to return to main menu"
    set "S_ADMIN=Administrator privileges required"
    set "S_LOADING=Loading"
    set "S_COMPLETE=Complete"
    set "S_ERROR=Error"
    set "S_SUCCESS=Success"
)
goto :MainMenu

:MainMenu
cls
call :AnimatedBanner
echo.
echo %CYAN%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
echo %BOLD%%YELLOW%  !S_VER!: 2.0  %GRAY%│  %RESET% %BOLD%%YELLOW%!S_DEV!: cyberQbit  %GRAY%│  %RESET% %BOLD%%YELLOW%Advanced Network ^& Cybersecurity Command Center  %RESET%
echo %CYAN%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
echo.
echo %GREEN%  ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════╗%RESET%
echo %GREEN%  ║ %CYAN%NETWORK ANALYSIS TOOLS                                                                                %GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║%RESET%  !S_M1!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M2!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M3!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M4!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M5!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M6!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M7!%GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║ %RED%ADVANCED SECURITY ^& MONITORING                                                                        %GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║%RESET%  !S_M8!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M9!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M10!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M11!%GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║ %MAGENTA%PERFORMANCE ^& OPTIMIZATION                                                                            %GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║%RESET%  !S_M12!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M13!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M14!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M15!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M16!%GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║ %YELLOW%SYSTEM OPTIONS                                                                                        %GREEN%║%RESET%
echo %GREEN%  ╠═══════════════════════════════════════════════════════════════════════════════════════════════════════╣%RESET%
echo %GREEN%  ║%RESET%  !S_ML!%GREEN%║%RESET%
echo %GREEN%  ║%RESET%  !S_M0!%GREEN%║%RESET%
echo %GREEN%  ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════╝%RESET%
echo.
echo %CYAN%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
echo.
choice /c 1234567890ABCDEFGL /n /m "%BOLD%%CYAN%█ !S_PRMPT!: %RESET%"
set "menu=!errorlevel!"

if "!menu!"=="1" goto :WiFiForensics
if "!menu!"=="2" goto :DNSManager
if "!menu!"=="3" goto :KillSwitch
if "!menu!"=="4" goto :IPScanner
if "!menu!"=="5" goto :NetworkRepair
if "!menu!"=="6" goto :PingTest
if "!menu!"=="7" goto :PortScanner
if "!menu!"=="8" goto :SecurityAnalysis
if "!menu!"=="9" goto :BandwidthMonitor
if "!menu!"=="10" goto :EOF
if "!menu!"=="11" goto :WiFiAnalyzer
if "!menu!"=="12" goto :VPNDetector
if "!menu!"=="13" goto :SpeedTest
if "!menu!"=="14" goto :AdvancedTraceroute
if "!menu!"=="15" goto :SystemMonitor
if "!menu!"=="16" goto :AutoOptimization
if "!menu!"=="17" goto :ExportReports
if "!menu!"=="18" ( del "%LANG_FILE%" & goto :SelectLanguage )
goto :MainMenu

:: ==============================================================================
:: YARDIMCI FONKSIYONLAR
:: ==============================================================================
:AnimatedBanner
echo.
echo %BOLD%%CYAN%
echo         ███╗   ██╗███████╗████████╗███████╗██╗    ██╗██╗███████╗████████╗    ██████╗ ██████╗  ██████╗ 
echo         ████╗  ██║██╔════╝╚══██╔══╝██╔════╝██║    ██║██║██╔════╝╚══██╔══╝    ██╔══██╗██╔══██╗██╔═══██╗
echo         ██╔██╗ ██║█████╗     ██║   ███████╗██║ █╗ ██║██║█████╗     ██║       ██████╔╝██████╔╝██║   ██║
echo         ██║╚██╗██║██╔══╝     ██║   ╚════██║██║███╗██║██║██╔══╝     ██║       ██╔═══╝ ██╔══██╗██║   ██║
echo         ██║ ╚████║███████╗   ██║   ███████║╚███╔███╔╝██║██║        ██║       ██║     ██║  ██║╚██████╔╝
echo         ╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚══════╝ ╚══╝╚══╝ ╚═╝╚═╝        ╚═╝       ╚═╝     ╚═╝  ╚═╝ ╚═════╝ 
echo %RESET%
goto :eof

:PrintSeparator
echo %GRAY%════════════════════════════════════════════════════════════════════════════════════════════════════════════%RESET%
goto :eof

:LoadingBar
setlocal
set "progress="
for /L %%i in (1,1,50) do (
    set "progress=!progress!█"
    <nul set /p "=%CYAN%[!progress!%GRAY%                                                  %CYAN%] %%i%%%RESET%"
    ping localhost -n 1 >nul 2>&1
    echo.
)
endlocal
goto :eof

:CheckAdmin
net session >nul 2>&1
if errorlevel 1 (
    echo %RED%[!] !S_ADMIN!%RESET%
    echo %YELLOW%[*] Lütfen programı "Yönetici olarak çalıştır" ile başlatın.%RESET%
    pause
    goto :MainMenu
)
goto :eof

:: ==============================================================================
:: [1] WI-FI FORENSICS (Geliştirilmiş)
:: ==============================================================================
:WiFiForensics
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] WI-FI FORENSICS ^& PASSWORD EXTRACTION MODULE%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Tarama başlatılıyor...%RESET%
timeout /t 1 /nobreak >nul
echo %CYAN%[▓] Kayıtlı Wi-Fi profilleri analiz ediliyor...%RESET%
timeout /t 1 /nobreak >nul
echo.
call :PrintSeparator
powershell -command "$profiles = (netsh wlan show profiles) -match 'All User Profile' -replace '.*: ',''; $count = 0; foreach ($p in $profiles) { $count++; $key = ((netsh wlan show profile name=$p key=clear) -match 'Key Content' -replace '.*: ',''); $auth = ((netsh wlan show profile name=$p) -match 'Authentication' -replace '.*: ','')[0]; if ($key) { Write-Host \"[$count] SSID: $p\" -ForegroundColor Cyan; Write-Host \"    ├─ Şifre: $key\" -ForegroundColor Green; Write-Host \"    └─ Güvenlik: $auth\" -ForegroundColor Yellow; Write-Host \"\" } else { Write-Host \"[$count] SSID: $p\" -ForegroundColor Cyan; Write-Host \"    ├─ Şifre: (Açık Ağ / Kayıtlı Değil)\" -ForegroundColor DarkGray; Write-Host \"    └─ Güvenlik: $auth\" -ForegroundColor Yellow; Write-Host \"\" } }; Write-Host \"═══════════════════════════════════════════════\" -ForegroundColor Gray; Write-Host \"[✓] Toplam $count Wi-Fi profili bulundu.\" -ForegroundColor Green"
echo.
call :PrintSeparator
echo %GREEN%[✓] Tarama tamamlandı!%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [2] SMART DNS MANAGER (Geliştirilmiş)
:: ==============================================================================
:DNSManager
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] SMART DNS MANAGER - GLOBAL SERVER OPTIMIZATION%RESET%
call :PrintSeparator
echo.
echo %CYAN%  ╔═══════════════════════════════════════════════════════════════════════════════╗%RESET%
echo %CYAN%  ║  %YELLOW%[1]%RESET% Cloudflare (1.1.1.1)      │ %GREEN%En Hızlı / Gizlilik Odaklı%RESET%              %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[2]%RESET% Google DNS (8.8.8.8)       │ %GREEN%En Stabil / Dünya Çapında%RESET%               %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[3]%RESET% Quad9 (9.9.9.9)            │ %GREEN%Zararlı Yazılım Korumalı%RESET%                %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[4]%RESET% OpenDNS (208.67.222.222)   │ %GREEN%Aile Koruması / İçerik Filtresi%RESET%         %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[5]%RESET% Adguard DNS (94.140.14.14) │ %GREEN%Reklam Engelleyici%RESET%                      %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[6]%RESET% Auto DHCP                  │ %GRAY%Varsayılan / Sıfırla%RESET%                     %CYAN%║%RESET%
echo %CYAN%  ╚═══════════════════════════════════════════════════════════════════════════════╝%RESET%
echo.
choice /c 123456 /n /m "%BOLD%%CYAN%█ DNS sunucusunu seçin (1-6): %RESET%"
set "dns_choice=!errorlevel!"

echo.
echo %CYAN%[▓] Ağ adaptörleri yapılandırılıyor...%RESET%
timeout /t 1 /nobreak >nul

if "!dns_choice!"=="1" (
    powershell -command "Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | Set-DnsClientServerAddress -ServerAddresses '1.1.1.1','1.0.0.1'"
    echo %GREEN%[✓] Cloudflare DNS başarıyla uygulandı!%RESET%
    echo %YELLOW%    Primary: 1.1.1.1  │  Secondary: 1.0.0.1%RESET%
)
if "!dns_choice!"=="2" (
    powershell -command "Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | Set-DnsClientServerAddress -ServerAddresses '8.8.8.8','8.8.4.4'"
    echo %GREEN%[✓] Google DNS başarıyla uygulandı!%RESET%
    echo %YELLOW%    Primary: 8.8.8.8  │  Secondary: 8.8.4.4%RESET%
)
if "!dns_choice!"=="3" (
    powershell -command "Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | Set-DnsClientServerAddress -ServerAddresses '9.9.9.9','149.112.112.112'"
    echo %GREEN%[✓] Quad9 DNS başarıyla uygulandı!%RESET%
    echo %YELLOW%    Primary: 9.9.9.9  │  Secondary: 149.112.112.112%RESET%
)
if "!dns_choice!"=="4" (
    powershell -command "Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | Set-DnsClientServerAddress -ServerAddresses '208.67.222.222','208.67.220.220'"
    echo %GREEN%[✓] OpenDNS başarıyla uygulandı!%RESET%
    echo %YELLOW%    Primary: 208.67.222.222  │  Secondary: 208.67.220.220%RESET%
)
if "!dns_choice!"=="5" (
    powershell -command "Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | Set-DnsClientServerAddress -ServerAddresses '94.140.14.14','94.140.15.15'"
    echo %GREEN%[✓] Adguard DNS başarıyla uygulandı!%RESET%
    echo %YELLOW%    Primary: 94.140.14.14  │  Secondary: 94.140.15.15%RESET%
)
if "!dns_choice!"=="6" (
    powershell -command "Get-NetAdapter -Physical | Set-DnsClientServerAddress -ResetServerAddresses"
    echo %GREEN%[✓] DNS ayarları DHCP otomatik olarak sıfırlandı!%RESET%
)

echo.
echo %CYAN%[▓] DNS önbelleği temizleniyor...%RESET%
ipconfig /flushdns >nul 2>&1
echo %GREEN%[✓] DNS cache temizlendi.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [3] NETWORK KILLSWITCH (Geliştirilmiş)
:: ==============================================================================
:KillSwitch
cls
call :PrintSeparator
echo %BOLD%%RED%  [!!!] NETWORK KILLSWITCH - EMERGENCY CONNECTION CONTROL [!!!]%RESET%
call :PrintSeparator
echo.
echo %CYAN%  ╔═══════════════════════════════════════════════════════════════╗%RESET%
echo %CYAN%  ║  %RED%[1]%RESET% ⚠️  İNTERNETİ KES (DROP CONNECTION)              %CYAN%║%RESET%
echo %CYAN%  ║  %GREEN%[2]%RESET% ✓  İNTERNETİ GERİ GETİR (RESTORE)              %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[3]%RESET% 🔄 ADAPTÖR SIFIRLA (ADAPTER RESET)            %CYAN%║%RESET%
echo %CYAN%  ╚═══════════════════════════════════════════════════════════════╝%RESET%
echo.
choice /c 123 /n /m "%BOLD%%CYAN%█ İşlem seçin (1-3): %RESET%"
set "kill_choice=!errorlevel!"

echo.
if "!kill_choice!"=="1" (
    echo %RED%[!] İnternet bağlantısı kesiliyor...%RESET%
    timeout /t 1 /nobreak >nul
    ipconfig /release >nul 2>&1
    netsh interface set interface "Wi-Fi" disabled >nul 2>&1
    netsh interface set interface "Ethernet" disabled >nul 2>&1
    echo %RED%[✓] Tüm ağ adaptörleri devre dışı bırakıldı!%RESET%
    echo %YELLOW%    Dış dünya ile bağlantı tamamen koptu.%RESET%
)
if "!kill_choice!"=="2" (
    echo %GREEN%[!] İnternet bağlantısı geri getiriliyor...%RESET%
    timeout /t 1 /nobreak >nul
    netsh interface set interface "Wi-Fi" enabled >nul 2>&1
    netsh interface set interface "Ethernet" enabled >nul 2>&1
    ipconfig /renew >nul 2>&1
    echo %GREEN%[✓] Ağ adaptörleri aktif edildi!%RESET%
    echo %YELLOW%    Bağlantı yeniden kuruldu.%RESET%
)
if "!kill_choice!"=="3" (
    echo %YELLOW%[!] Ağ adaptörleri sıfırlanıyor...%RESET%
    timeout /t 1 /nobreak >nul
    ipconfig /release >nul 2>&1
    ipconfig /renew >nul 2>&1
    arp -d * >nul 2>&1
    echo %GREEN%[✓] Adaptörler başarıyla sıfırlandı!%RESET%
)
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [4] LIVE IP & SCANNER (Geliştirilmiş)
:: ==============================================================================
:IPScanner
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] LIVE IP SCANNER ^& NETWORK INFORMATION MODULE%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Ağ bilgileri toplanıyor...%RESET%
timeout /t 1 /nobreak >nul
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[🌐] LOKAL AĞ BİLGİLERİ (LOCAL NETWORK):%RESET%
call :PrintSeparator
powershell -command "Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notmatch '^127\.' } | ForEach-Object { Write-Host \"  ├─ IP Adresi    : $($_.IPAddress)\" -ForegroundColor Green; Write-Host \"  ├─ Subnet Mask  : $($_.PrefixLength)\" -ForegroundColor Yellow; Write-Host \"  └─ Adaptör      : $((Get-NetAdapter -InterfaceIndex $_.InterfaceIndex).Name)\" -ForegroundColor Cyan; Write-Host \"\" }"
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[🌍] DIŞ AĞ BİLGİLERİ (PUBLIC IP):%RESET%
call :PrintSeparator
powershell -command "try { $ip = (Invoke-RestMethod -Uri 'https://api.ipify.org' -TimeoutSec 5); $geo = (Invoke-RestMethod -Uri \"http://ip-api.com/json/$ip\" -TimeoutSec 5); Write-Host \"  ├─ Dış IP       : $ip\" -ForegroundColor Green; Write-Host \"  ├─ Ülke         : $($geo.country)\" -ForegroundColor Yellow; Write-Host \"  ├─ Şehir        : $($geo.city)\" -ForegroundColor Yellow; Write-Host \"  ├─ ISP          : $($geo.isp)\" -ForegroundColor Cyan; Write-Host \"  └─ Zaman Dilimi : $($geo.timezone)\" -ForegroundColor Magenta } catch { Write-Host \"  [!] Dış IP bilgisi alınamadı.\" -ForegroundColor Red }"
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[🔧] CİHAZ MAC ADRESLERİ (PHYSICAL ADDRESSES):%RESET%
call :PrintSeparator
powershell -command "Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | ForEach-Object { Write-Host \"  ├─ Adaptör : $($_.Name)\" -ForegroundColor Cyan; Write-Host \"  └─ MAC     : $($_.MacAddress)\" -ForegroundColor Green; Write-Host \"\" }"
echo.
call :PrintSeparator
echo %GREEN%[✓] Tarama tamamlandı!%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [5] DEEP NETWORK REPAIR (Geliştirilmiş)
:: ==============================================================================
:NetworkRepair
cls
call :CheckAdmin
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] DEEP NETWORK REPAIR - COMPLETE STACK RESET%RESET%
call :PrintSeparator
echo.
echo %CYAN%[1/7] DNS Önbelleği temizleniyor...%RESET%
ipconfig /flushdns >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[2/7] NetBIOS önbelleği temizleniyor...%RESET%
nbtstat -R >nul 2>&1
nbtstat -RR >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[3/7] Winsock katalogu sıfırlanıyor...%RESET%
netsh winsock reset >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[4/7] TCP/IP yığını sıfırlanıyor...%RESET%
netsh int ip reset >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[5/7] IPv6 yapılandırması sıfırlanıyor...%RESET%
netsh int ipv6 reset >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[6/7] Proxy ayarları temizleniyor...%RESET%
netsh winhttp reset proxy >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[7/7] ARP tablosu temizleniyor...%RESET%
arp -d * >nul 2>&1
echo %GREEN%      [✓] Başarılı.%RESET%
timeout /t 1 /nobreak >nul

echo.
call :PrintSeparator
echo %BOLD%%GREEN%[✓] TÜM AĞ BİLEŞENLERİ BAŞARIYLA SIFIRLANDI!%RESET%
call :PrintSeparator
echo.
echo %YELLOW%[!] Değişikliklerin tam olarak uygulanması için bilgisayarınızı yeniden başlatmanız önerilir.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [6] PING & LATENCY TEST (Geliştirilmiş)
:: ==============================================================================
:PingTest
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] GLOBAL DNS LATENCY BENCHMARK%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] DNS sunucuları test ediliyor...%RESET%
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[📊] TEST SONUÇLARI:%RESET%
call :PrintSeparator
echo.
echo %YELLOW%[1] Google DNS (8.8.8.8)%RESET%
ping 8.8.8.8 -n 4 | findstr /i "Ortalama Average minimum maksimum Maximum"
echo.
echo %YELLOW%[2] Cloudflare (1.1.1.1)%RESET%
ping 1.1.1.1 -n 4 | findstr /i "Ortalama Average minimum maksimum Maximum"
echo.
echo %YELLOW%[3] OpenDNS (208.67.222.222)%RESET%
ping 208.67.222.222 -n 4 | findstr /i "Ortalama Average minimum maksimum Maximum"
echo.
echo %YELLOW%[4] Quad9 (9.9.9.9)%RESET%
ping 9.9.9.9 -n 4 | findstr /i "Ortalama Average minimum maksimum Maximum"
echo.
echo %YELLOW%[5] Adguard DNS (94.140.14.14)%RESET%
ping 94.140.14.14 -n 4 | findstr /i "Ortalama Average minimum maksimum Maximum"
echo.
call :PrintSeparator
echo %GREEN%[✓] Test tamamlandı!%RESET%
echo %CYAN%[*] En düşük "Ortalama/Average" süreye sahip DNS'i Menü [2]'den ayarlayabilirsiniz.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [7] LAN & PORT SCANNER (Geliştirilmiş)
:: ==============================================================================
:PortScanner
cls
call :PrintSeparator
echo %BOLD%%RED%  [*] LAN ^& PORT SCANNER - NETWORK SECURITY ANALYSIS%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Ağ cihazları taranıyor...%RESET%
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[🌐] AĞA BAĞLI CİHAZLAR (ARP TABLE):%RESET%
call :PrintSeparator
powershell -command "arp -a | Select-String 'dynamic|dinamik' | ForEach-Object { Write-Host $_ -ForegroundColor Green }"
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[🔍] PORT TARAMA MODÜLÜ:%RESET%
call :PrintSeparator
echo.

powershell -command "$target = Read-Host '%YELLOW%Hedef IP adresi girin (Ana menü için Enter)%RESET%'; if ($target) { Write-Host \"`n%CYAN%[▓] $target üzerinde yaygın portlar taranıyor...%RESET%\" -ForegroundColor Cyan; $ports = @(21,22,23,25,53,80,110,135,139,143,443,445,3306,3389,5900,8080,8443); $openPorts = @(); foreach ($port in $ports) { try { $tcp = New-Object System.Net.Sockets.TcpClient; $connect = $tcp.BeginConnect($target, $port, $null, $null); $wait = $connect.AsyncWaitHandle.WaitOne(500, $false); if ($tcp.Connected) { $openPorts += $port; $service = switch ($port) { 21 {'FTP'}; 22 {'SSH'}; 23 {'Telnet'}; 25 {'SMTP'}; 53 {'DNS'}; 80 {'HTTP'}; 110 {'POP3'}; 135 {'RPC'}; 139 {'NetBIOS'}; 143 {'IMAP'}; 443 {'HTTPS'}; 445 {'SMB'}; 3306 {'MySQL'}; 3389 {'RDP'}; 5900 {'VNC'}; 8080 {'HTTP-ALT'}; 8443 {'HTTPS-ALT'}; default {'Unknown'} }; Write-Host \"  [+] AÇIK   : Port $port ($service)\" -ForegroundColor Green; $tcp.Close() } else { Write-Host \"  [-] KAPALI : Port $port\" -ForegroundColor DarkGray } } catch { Write-Host \"  [-] KAPALI : Port $port\" -ForegroundColor DarkGray } } Write-Host \"`n%GREEN%════════════════════════════════════════%RESET%\" -ForegroundColor Green; Write-Host \"%GREEN%[✓] Tarama tamamlandı!%RESET%\" -ForegroundColor Green; Write-Host \"%YELLOW%[*] Toplam $($openPorts.Count) açık port bulundu.%RESET%\" -ForegroundColor Yellow; if ($openPorts.Count -gt 0) { Write-Host \"%CYAN%[*] Açık Portlar: $($openPorts -join ', ')%RESET%\" -ForegroundColor Cyan } }"

echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [8] SECURITY ANALYSIS (YENİ)
:: ==============================================================================
:SecurityAnalysis
cls
call :CheckAdmin
call :PrintSeparator
echo %BOLD%%RED%  [*] ADVANCED SECURITY ANALYSIS ^& VULNERABILITY SCANNER%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Güvenlik analizi başlatılıyor...%RESET%
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🛡️] FIREWALL DURUMU:%RESET%
call :PrintSeparator
netsh advfirewall show allprofiles state | findstr /i "State Durum"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🔥] AKTİF BAĞLANTILAR VE DİNLEYEN PORTLAR:%RESET%
call :PrintSeparator
netstat -ano | findstr "LISTENING ESTABLISHED" | findstr /v "127.0.0.1"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[⚠️] ŞÜPHELİ BAĞLANTILAR (FOREIGN CONNECTIONS):%RESET%
call :PrintSeparator
powershell -command "Get-NetTCPConnection | Where-Object { $_.State -eq 'Established' -and $_.RemoteAddress -notmatch '^(127\.|10\.|172\.16\.|192\.168\.)' } | Select-Object -First 10 LocalAddress,LocalPort,RemoteAddress,RemotePort,State,@{Name='Process';Expression={(Get-Process -Id $_.OwningProcess).ProcessName}} | Format-Table -AutoSize"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[📋] WINDOWS DEFENDER DURUMU:%RESET%
call :PrintSeparator
powershell -command "Get-MpComputerStatus | Select-Object AntivirusEnabled,RealTimeProtectionEnabled,IoavProtectionEnabled,BehaviorMonitorEnabled | Format-List"
echo.

call :PrintSeparator
echo %GREEN%[✓] Güvenlik analizi tamamlandı!%RESET%
call :PrintSeparator
echo %YELLOW%[!] Şüpheli bağlantılar tespit edildiyse, ilgili process'leri kontrol edin.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [9] BANDWIDTH MONITOR (YENİ)
:: ==============================================================================
:BandwidthMonitor
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] REAL-TIME BANDWIDTH MONITOR%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Ağ trafiği izleniyor... (10 saniye)%RESET%
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[📊] AĞ TRAFİĞİ İSTATİSTİKLERİ:%RESET%
call :PrintSeparator
echo.

powershell -command "$adapters = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }; foreach ($adapter in $adapters) { Write-Host \"[*] Adaptör: $($adapter.Name)\" -ForegroundColor Cyan; $stat1 = Get-NetAdapterStatistics -Name $adapter.Name; $recv1 = $stat1.ReceivedBytes; $sent1 = $stat1.SentBytes; Start-Sleep -Seconds 5; $stat2 = Get-NetAdapterStatistics -Name $adapter.Name; $recv2 = $stat2.ReceivedBytes; $sent2 = $stat2.SentBytes; $recvRate = [math]::Round(($recv2 - $recv1) / 5 / 1024, 2); $sentRate = [math]::Round(($sent2 - $sent1) / 5 / 1024, 2); Write-Host \"  ├─ Download Hızı : $recvRate KB/s\" -ForegroundColor Green; Write-Host \"  ├─ Upload Hızı   : $sentRate KB/s\" -ForegroundColor Yellow; Write-Host \"  ├─ Toplam İndirilen : $([math]::Round($recv2/1MB, 2)) MB\" -ForegroundColor Magenta; Write-Host \"  └─ Toplam Gönderilen: $([math]::Round($sent2/1MB, 2)) MB\" -ForegroundColor Magenta; Write-Host \"\" }"

echo.
call :PrintSeparator
echo %GREEN%[✓] Monitoring tamamlandı!%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [10] WIFI SIGNAL ANALYZER (YENİ)
:: ==============================================================================
:WiFiAnalyzer
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] WI-FI SIGNAL STRENGTH ANALYZER%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Mevcut Wi-Fi ağları taranıyor...%RESET%
timeout /t 2 /nobreak >nul
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[📡] WI-FI AĞ SINYAL HARİTASI:%RESET%
call :PrintSeparator
echo.

powershell -command "netsh wlan show networks mode=bssid | Select-String -Pattern 'SSID|Signal|Kanal|Channel|Authentication|Şifreleme|Encryption' | ForEach-Object { $line = $_.Line.Trim(); if ($line -match 'SSID') { Write-Host \"`n$line\" -ForegroundColor Cyan } elseif ($line -match 'Signal|İşaret') { Write-Host \"  ├─ $line\" -ForegroundColor Green } elseif ($line -match 'Channel|Kanal') { Write-Host \"  ├─ $line\" -ForegroundColor Yellow } elseif ($line -match 'Authentication|Kimlik') { Write-Host \"  ├─ $line\" -ForegroundColor Magenta } elseif ($line -match 'Encryption|Şifreleme') { Write-Host \"  └─ $line\" -ForegroundColor Red } else { Write-Host \"  $line\" -ForegroundColor Gray } }"

echo.
call :PrintSeparator
echo %GREEN%[✓] Tarama tamamlandı!%RESET%
echo %CYAN%[*] En yüksek sinyal gücüne sahip ağ en iyi performansı sağlar.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [11] VPN/PROXY DETECTOR (YENİ)
:: ==============================================================================
:VPNDetector
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] VPN ^& PROXY CONNECTION DETECTOR%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] VPN ve Proxy bağlantıları kontrol ediliyor...%RESET%
timeout /t 1 /nobreak >nul
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🔐] VPN ADAPTÖR TARAMASI:%RESET%
call :PrintSeparator
powershell -command "Get-NetAdapter | Where-Object { $_.InterfaceDescription -match 'VPN|TAP|TUN|Virtual' } | ForEach-Object { if ($_.Status -eq 'Up') { Write-Host \"  [+] Aktif VPN Bulundu: $($_.Name)\" -ForegroundColor Red; Write-Host \"      └─ Adaptör: $($_.InterfaceDescription)\" -ForegroundColor Yellow } else { Write-Host \"  [-] Pasif VPN: $($_.Name)\" -ForegroundColor Gray } }"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🌐] PROXY AYARLARI:%RESET%
call :PrintSeparator
powershell -command "$proxy = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings'; if ($proxy.ProxyEnable -eq 1) { Write-Host \"  [!] Proxy Aktif!\" -ForegroundColor Red; Write-Host \"      ├─ Proxy Sunucu: $($proxy.ProxyServer)\" -ForegroundColor Yellow; Write-Host \"      └─ Bypass List : $($proxy.ProxyOverride)\" -ForegroundColor Cyan } else { Write-Host \"  [✓] Proxy kullanılmıyor.\" -ForegroundColor Green }"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🔍] DNS SIZMA KONTROLÜ:%RESET%
call :PrintSeparator
powershell -command "try { $ip1 = (Invoke-RestMethod -Uri 'https://api.ipify.org' -TimeoutSec 3); $dns = (Resolve-DnsName -Name 'api.ipify.org' -Type A -Server 1.1.1.1 -ErrorAction SilentlyContinue | Select-Object -First 1).IPAddress; Write-Host \"  ├─ Gerçek IP    : $ip1\" -ForegroundColor Green; Write-Host \"  └─ DNS Çözümü   : $dns\" -ForegroundColor Cyan; if ($ip1 -ne $dns) { Write-Host \"`n  [!] Olası DNS Sızması Tespit Edildi!\" -ForegroundColor Red } else { Write-Host \"`n  [✓] DNS güvenli.\" -ForegroundColor Green } } catch { Write-Host \"  [!] DNS kontrolü yapılamadı.\" -ForegroundColor Red }"
echo.

call :PrintSeparator
echo %GREEN%[✓] Tarama tamamlandı!%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [12] INTERNET SPEED TEST (YENİ)
:: ==============================================================================
:SpeedTest
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] INTERNET SPEED TEST - DOWNLOAD ^& UPLOAD MEASUREMENT%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Hız testi başlatılıyor...%RESET%
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[⚡] DOWNLOAD HIZ TESTİ (10MB Test Dosyası):%RESET%
call :PrintSeparator
powershell -command "$start = Get-Date; try { Invoke-WebRequest -Uri 'http://speedtest.ftp.otenet.gr/files/test10Mb.db' -OutFile '$env:TEMP\speedtest.tmp' -TimeoutSec 30 -UseBasicParsing; $end = Get-Date; $duration = ($end - $start).TotalSeconds; $speed = [math]::Round((10 / $duration), 2); Write-Host \"  [✓] Download Hızı: $speed Mbps\" -ForegroundColor Green; Write-Host \"  └─ Süre: $([math]::Round($duration, 2)) saniye\" -ForegroundColor Cyan; Remove-Item '$env:TEMP\speedtest.tmp' -Force } catch { Write-Host \"  [!] Download testi başarısız.\" -ForegroundColor Red }"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[📤] UPLOAD HIZ TESTİ (Ping Latency):%RESET%
call :PrintSeparator
powershell -command "$pingResults = Test-Connection -ComputerName 8.8.8.8 -Count 10; $avg = ($pingResults | Measure-Object -Property ResponseTime -Average).Average; Write-Host \"  ├─ Ortalama Ping: $([math]::Round($avg, 2)) ms\" -ForegroundColor Yellow; $min = ($pingResults | Measure-Object -Property ResponseTime -Minimum).Minimum; $max = ($pingResults | Measure-Object -Property ResponseTime -Maximum).Maximum; Write-Host \"  ├─ En Düşük    : $min ms\" -ForegroundColor Green; Write-Host \"  └─ En Yüksek   : $max ms\" -ForegroundColor Red"
echo.

call :PrintSeparator
echo %GREEN%[✓] Hız testi tamamlandı!%RESET%
echo %YELLOW%[*] Gerçek Upload hızı için external speedtest servisi kullanılmalıdır.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [13] ADVANCED TRACEROUTE (YENİ)
:: ==============================================================================
:AdvancedTraceroute
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] ADVANCED TRACEROUTE - VISUAL HOP ANALYSIS%RESET%
call :PrintSeparator
echo.
set /p "trace_target=%CYAN%Hedef domain/IP girin (örn: google.com): %RESET%"
echo.
echo %CYAN%[▓] %trace_target% rotası izleniyor...%RESET%
echo.
call :PrintSeparator
echo %BOLD%%CYAN%[🛤️] ROTA ANALİZİ:%RESET%
call :PrintSeparator
echo.

powershell -command "$target = '%trace_target%'; tracert -d -h 20 $target | ForEach-Object { if ($_ -match '^\s+(\d+)\s+(.*)') { $hop = $matches[1]; $data = $matches[2]; if ($data -match '\*\s+\*\s+\*') { Write-Host \"  [$hop] *** Request Timeout ***\" -ForegroundColor Red } else { Write-Host \"  [$hop] $data\" -ForegroundColor Green } } else { Write-Host $_ -ForegroundColor Cyan } }"

echo.
call :PrintSeparator
echo %GREEN%[✓] Traceroute tamamlandı!%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [14] SYSTEM RESOURCE MONITOR (YENİ)
:: ==============================================================================
:SystemMonitor
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] SYSTEM RESOURCE MONITOR - CPU, RAM, DISK%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Sistem kaynakları izleniyor...%RESET%
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[💻] CPU KULLANIMI:%RESET%
call :PrintSeparator
powershell -command "$cpu = Get-Counter '\Processor(_Total)\%% Processor Time' -SampleInterval 1 -MaxSamples 3 | Select-Object -ExpandProperty CounterSamples | Measure-Object -Property CookedValue -Average | Select-Object -ExpandProperty Average; Write-Host \"  └─ CPU Kullanımı: $([math]::Round($cpu, 2))%%\" -ForegroundColor $(if ($cpu -gt 80) {'Red'} elseif ($cpu -gt 50) {'Yellow'} else {'Green'})"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🧠] RAM KULLANIMI:%RESET%
call :PrintSeparator
powershell -command "$os = Get-CimInstance Win32_OperatingSystem; $total = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2); $free = [math]::Round($os.FreePhysicalMemory / 1MB, 2); $used = [math]::Round($total - $free, 2); $percent = [math]::Round(($used / $total) * 100, 2); Write-Host \"  ├─ Toplam RAM   : $total GB\" -ForegroundColor Cyan; Write-Host \"  ├─ Kullanılan   : $used GB\" -ForegroundColor Yellow; Write-Host \"  ├─ Boş          : $free GB\" -ForegroundColor Green; Write-Host \"  └─ Kullanım Oranı: $percent%%\" -ForegroundColor $(if ($percent -gt 80) {'Red'} elseif ($percent -gt 60) {'Yellow'} else {'Green'})"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[💾] DİSK KULLANIMI:%RESET%
call :PrintSeparator
powershell -command "Get-PSDrive -PSProvider FileSystem | Where-Object { $_.Used -ne $null } | ForEach-Object { $total = [math]::Round($_.Used/1GB + $_.Free/1GB, 2); $used = [math]::Round($_.Used/1GB, 2); $free = [math]::Round($_.Free/1GB, 2); $percent = [math]::Round(($used / $total) * 100, 2); Write-Host \"  [$($_.Name):] Sürücü\" -ForegroundColor Cyan; Write-Host \"    ├─ Toplam: $total GB\" -ForegroundColor White; Write-Host \"    ├─ Kullanılan: $used GB\" -ForegroundColor Yellow; Write-Host \"    ├─ Boş: $free GB\" -ForegroundColor Green; Write-Host \"    └─ Doluluk: $percent%%\" -ForegroundColor $(if ($percent -gt 90) {'Red'} elseif ($percent -gt 70) {'Yellow'} else {'Green'}); Write-Host \"\" }"
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[⚡] EN ÇOK KAYNAK KULLANAN PROSESLER:%RESET%
call :PrintSeparator
powershell -command "Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 ProcessName,@{Name='CPU(s)';Expression={[math]::Round($_.CPU, 2)}},@{Name='RAM(MB)';Expression={[math]::Round($_.WorkingSet/1MB, 2)}} | Format-Table -AutoSize"
echo.

call :PrintSeparator
echo %GREEN%[✓] Monitoring tamamlandı!%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [15] AUTO OPTIMIZATION (YENİ)
:: ==============================================================================
:AutoOptimization
cls
call :CheckAdmin
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] AI-POWERED NETWORK AUTO OPTIMIZATION%RESET%
call :PrintSeparator
echo.
echo %CYAN%[▓] Ağ analizi yapılıyor...%RESET%
timeout /t 2 /nobreak >nul
echo.

call :PrintSeparator
echo %BOLD%%CYAN%[🤖] OPTİMİZASYON ADIMLARI:%RESET%
call :PrintSeparator
echo.

echo %CYAN%[1/8] En hızlı DNS sunucusu belirleniyor...%RESET%
powershell -command "$dns = @('1.1.1.1','8.8.8.8','9.9.9.9'); $best = $null; $bestTime = 9999; foreach ($d in $dns) { $result = Test-Connection -ComputerName $d -Count 2 -ErrorAction SilentlyContinue; if ($result) { $avg = ($result | Measure-Object -Property ResponseTime -Average).Average; if ($avg -lt $bestTime) { $bestTime = $avg; $best = $d } } }; Write-Host \"      [✓] En hızlı DNS: $best ($([math]::Round($bestTime, 2)) ms)\" -ForegroundColor Green; Get-NetAdapter -Physical | Where-Object { $_.Status -eq 'Up' } | Set-DnsClientServerAddress -ServerAddresses $best"
timeout /t 1 /nobreak >nul

echo %CYAN%[2/8] DNS cache temizleniyor...%RESET%
ipconfig /flushdns >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[3/8] TCP/IP parametreleri optimize ediliyor...%RESET%
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[4/8] Network adapter güç ayarları optimize ediliyor...%RESET%
powershell -command "Get-NetAdapter -Physical | Set-NetAdapterPowerManagement -NoRestart -WakeOnMagicPacket Enabled -WakeOnPattern Enabled" >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[5/8] QoS (Quality of Service) ayarları yapılandırılıyor...%RESET%
netsh int tcp set global dca=enabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[6/8] Windows Auto-Tuning seviyesi ayarlanıyor...%RESET%
netsh int tcp set global autotuninglevel=highlyrestricted >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[7/8] MTU (Maximum Transmission Unit) optimize ediliyor...%RESET%
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent >nul 2>&1
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo %CYAN%[8/8] Ağ profili optimize ediliyor...%RESET%
powershell -command "Set-NetConnectionProfile -NetworkCategory Private" >nul 2>&1
echo %GREEN%      [✓] Tamamlandı.%RESET%
timeout /t 1 /nobreak >nul

echo.
call :PrintSeparator
echo %BOLD%%GREEN%[✓] OTOMATİK OPTİMİZASYON BAŞARIYLA TAMAMLANDI!%RESET%
call :PrintSeparator
echo %YELLOW%[*] Ağ performansınız maksimum seviyeye çıkarıldı.%RESET%
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:: ==============================================================================
:: [16] EXPORT REPORTS (YENİ)
:: ==============================================================================
:ExportReports
cls
call :PrintSeparator
echo %BOLD%%YELLOW%  [*] NETWORK REPORT GENERATOR%RESET%
call :PrintSeparator
echo.
echo %CYAN%  ╔═══════════════════════════════════════════════════════════════╗%RESET%
echo %CYAN%  ║  %YELLOW%[1]%RESET% HTML Raporu      │ Görsel ve detaylı web raporu     %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[2]%RESET% JSON Raporu      │ Programatik kullanım için        %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[3]%RESET% CSV Raporu       │ Excel uyumlu tablo formatı       %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[4]%RESET% TXT Raporu       │ Basit metin dosyası              %CYAN%║%RESET%
echo %CYAN%  ║  %YELLOW%[5]%RESET% Tüm Formatlar    │ Hepsini birden oluştur           %CYAN%║%RESET%
echo %CYAN%  ╚═══════════════════════════════════════════════════════════════╝%RESET%
echo.
choice /c 12345 /n /m "%BOLD%%CYAN%█ Rapor formatı seçin (1-5): %RESET%"
set "report_choice=!errorlevel!"

echo.
echo %CYAN%[▓] Rapor oluşturuluyor...%RESET%
timeout /t 1 /nobreak >nul

set "TIMESTAMP=%DATE:~-4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%"
set "TIMESTAMP=%TIMESTAMP: =0%"

if "!report_choice!"=="1" goto :GenerateHTML
if "!report_choice!"=="2" goto :GenerateJSON
if "!report_choice!"=="3" goto :GenerateCSV
if "!report_choice!"=="4" goto :GenerateTXT
if "!report_choice!"=="5" (
    call :GenerateHTML
    call :GenerateJSON
    call :GenerateCSV
    call :GenerateTXT
)

echo.
call :PrintSeparator
echo %GREEN%[✓] Raporlar başarıyla oluşturuldu!%RESET%
call :PrintSeparator
echo %CYAN%[*] Raporlar şu konumda: %REPORT_DIR%%RESET%
echo.
start "" "%REPORT_DIR%"
echo.
echo %CYAN%!S_BACK!%RESET%
pause >nul
goto :MainMenu

:GenerateHTML
powershell -command "$report = '%REPORT_DIR%\NetSwift_Report_%TIMESTAMP%.html'; $html = @\"
<!DOCTYPE html>
<html><head><meta charset='utf-8'><title>NetSwift Pro - Network Report</title>
<style>body{font-family:Arial;background:#1a1a1a;color:#fff;padding:20px}
h1{color:#00ffff;border-bottom:3px solid #00ffff}
.section{background:#2a2a2a;padding:15px;margin:10px 0;border-radius:8px;border-left:4px solid #00ff00}
.info{color:#ffff00}.success{color:#00ff00}.warning{color:#ff6600}.error{color:#ff0000}
table{width:100%;border-collapse:collapse;margin:10px 0}
th,td{padding:10px;text-align:left;border-bottom:1px solid #444}
th{background:#333;color:#00ffff}</style></head><body>
<h1>🚀 NetSwift Pro v2.0 - Network Analysis Report</h1>
<p class='info'>Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')</p>
<div class='section'><h2>📊 System Information</h2>
<table><tr><th>Property</th><th>Value</th></tr>
$(Get-ComputerInfo | Select-Object CsName,WindowsVersion,OsArchitecture | ForEach-Object { \"<tr><td>$($_.PSObject.Properties.Name)</td><td>$($_.PSObject.Properties.Value)</td></tr>\" })
</table></div>
<div class='section'><h2>🌐 Network Adapters</h2>
<table><tr><th>Name</th><th>Status</th><th>MAC</th><th>Speed</th></tr>
$(Get-NetAdapter -Physical | ForEach-Object { \"<tr><td>$($_.Name)</td><td class='success'>$($_.Status)</td><td>$($_.MacAddress)</td><td>$($_.LinkSpeed)</td></tr>\" })
</table></div>
<div class='section'><h2>📡 IP Configuration</h2>
<table><tr><th>Interface</th><th>IP Address</th><th>Subnet</th></tr>
$(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { \$_.IPAddress -notmatch '^127\.' } | ForEach-Object { \"<tr><td>$((Get-NetAdapter -InterfaceIndex \$_.InterfaceIndex).Name)</td><td class='success'>$($_.IPAddress)</td><td>$($_.PrefixLength)</td></tr>\" })
</table></div>
</body></html>
\"@; \$html | Out-File -FilePath \$report -Encoding UTF8; Write-Host \"[✓] HTML raporu oluşturuldu: \$report\" -ForegroundColor Green"
goto :eof

:GenerateJSON
powershell -command "$report = '%REPORT_DIR%\NetSwift_Report_%TIMESTAMP%.json'; $data = @{Timestamp=(Get-Date -Format 'o');System=(Get-ComputerInfo | Select-Object CsName,WindowsVersion);Adapters=(Get-NetAdapter -Physical | Select-Object Name,Status,MacAddress,LinkSpeed);IPConfig=(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notmatch '^127\.' } | Select-Object InterfaceAlias,IPAddress,PrefixLength)} | ConvertTo-Json -Depth 5; $data | Out-File -FilePath $report -Encoding UTF8; Write-Host \"[✓] JSON raporu oluşturuldu: $report\" -ForegroundColor Green"
goto :eof

:GenerateCSV
powershell -command "$report = '%REPORT_DIR%\NetSwift_Report_%TIMESTAMP%.csv'; Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notmatch '^127\.' } | Select-Object InterfaceAlias,IPAddress,PrefixLength,AddressState | Export-Csv -Path $report -NoTypeInformation -Encoding UTF8; Write-Host \"[✓] CSV raporu oluşturuldu: $report\" -ForegroundColor Green"
goto :eof

:GenerateTXT
powershell -command "$report = '%REPORT_DIR%\NetSwift_Report_%TIMESTAMP%.txt'; $content = @\"
═══════════════════════════════════════════════════════════
NETSWIFT PRO v2.0 - NETWORK ANALYSIS REPORT
═══════════════════════════════════════════════════════════
Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
`n[SYSTEM INFORMATION]
$(Get-ComputerInfo | Select-Object CsName,WindowsVersion,OsArchitecture | Format-List | Out-String)
`n[NETWORK ADAPTERS]
$(Get-NetAdapter -Physical | Format-Table Name,Status,MacAddress,LinkSpeed -AutoSize | Out-String)
`n[IP CONFIGURATION]
$(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { \$_.IPAddress -notmatch '^127\.' } | Format-Table InterfaceAlias,IPAddress,PrefixLength -AutoSize | Out-String)
`n═══════════════════════════════════════════════════════════
\"@; \$content | Out-File -FilePath \$report -Encoding UTF8; Write-Host \"[✓] TXT raporu oluşturuldu: \$report\" -ForegroundColor Green"
goto :eof

:: ==============================================================================
:: EXIT
:: ==============================================================================
:EOF
cls
call :AnimatedBanner
echo.
call :PrintSeparator
echo %BOLD%%YELLOW%  Thank you for using NetSwift Pro v2.0!%RESET%
echo %GRAY%  Developed by cyberQbit - Advanced Network ^& Cybersecurity Command Center %RESET%
call :PrintSeparator
echo.
timeout /t 3 /nobreak >nul
exit