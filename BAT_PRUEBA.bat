@echo off
REM Parámetros esperados:
REM %1 = Ruta base
REM %2 = Iteración inicial
REM %3 = Iteración final
REM %4 = JMETER_SECRET_IP
REM %5 = JMETER_SECRET_COMPLEMENTO_ENDPOINT
REM %6 = JMETER_SECRET_ENPOINT
 
REM Inicia
for /L %%a IN (%2, 1, %3) DO (
    mkdir %1\Escenario%%a
    mkdir %1\Escenario%%a\Dashboard
    jmeter -n -t %1\Escenario%%a.jmx -l %1\Escenario%%a\Escenario%%a.jtl -e -o %1\Escenario%%a\Dashboard ^
    -JJMETER_SECRET_IP=%4 -JJMETER_SECRET_COMPLEMENTO_ENDPOINT=%5 -JJMETER_SECRET_ENPOINT=%6
)
