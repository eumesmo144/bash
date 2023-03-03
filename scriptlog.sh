echo 'Comecando script kkkkk eitaa :^)'
                  #chegando ao diretório de logs
cd /var/log
head -15 kern.log #pegar as 15 primeiras linhas do log de kernel
tail -10 syslog   #pegar as 10 ultimas linhas do log do sistema
cat wtmp          #pegando os ultimos login e logout 
last
grep root *   	#pegando todos os lugares onde root é referenciado em todo o dir 
echo 'cabousse'