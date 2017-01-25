select distinct '\subsubsection{' || categoria || '}' as topico 
from caracterizacao_its.vw_cartoes_ordernados
order by  '\subsubsection{' || categoria || '}'