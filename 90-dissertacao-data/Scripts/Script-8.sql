select t.identificador_artigo, t.titulo_artigo, trim(unnest(string_to_array(t.palavras_chaves_artigo, ','))) as palavra_chave
from mapeamento_its.temp_artigos_escolhidos t