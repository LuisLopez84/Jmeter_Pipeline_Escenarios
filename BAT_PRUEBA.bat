REM Inicia
for /L %%a IN (%2, 1, %3) DO ( 
mkdir %1\Escenario%%a
mkdir %1\Escenario%%a\Dashboard
jmeter -n -t %1\Escenario%%a.jmx -l %1\Escenario%%a\Escenario%%a.jtl -e -o %1\Escenario%%a\DashBoard
)