# eleicoes-2022

Simples script em bash para somar os votos para presidente nas legendas 13 e 22 no arquivo csv oficial disponibilizado no link abaixo:   

https://cdn.tse.jus.br/estatistica/sead/odsele/votacao_secao/votacao_secao_2022_BR.zip   

###### Output:   

Total de votos 13 primeiro turno: 57259504   
Total de votos 13 segundo turno: 60345999   
Total de votos 22 primeiro turno: 51072345   
Total de votos 22 segundo turno: 58206354   

###### Arquivos

**lista_estado_secoes** : contém número total de seções por estado   
**headers_csv** : associa um cabeçalho e o número de sua coluna   
**links_download_tse_bu_imgbu_logjez_rdv_vscmr** : contém links para download de todos os arquivos gerados pelas urnas eletrônicas

###### Comandos

Comando para converter arquivos Latin-1 para UTF-8    
<code>iconv -f iso-8859-1 -t utf-8 logd.dat</code>   
