
================================================================================================
REQUISITOS DE FERRAMENTAS DE SUPORTE DE PROBLEMAS DE SOFTWARE (FSPS): MAPEAMENTO SISTEMÁTICO
================================================================================================

:Date: Ter 01 Mar 2016 21:15:56 BRT
:Author: Vagner Clementino
:Revision: 4
:Revision Date: 2016-05-13 08:36:00

Objetivos e Justificativas
---------------------------

    #.  Sumarizar os resultados de pesquisas relativas à extensão de
        Ferramentas de Suporte de Problemas de Software(FSPS).

    #. Identificar possíveis lacunas na literatura existente visando o
       desenvolvimento ou aperfeiçoamento das extensões para FSPS.

Questões de Pesquisa
----------------------
n    - |Q1|:*Quais são as funcionalidades propostas para estender as FSPS?*

    - |Q2|: *Qual técnica foi utilizada para desenvolver a extensão?*

    - |Q3|: *Quais as FSPS estão sendo estendidas?*

    - |Q4|: *Como foi realizado o processo de avaliação da extensão proposta?*

    - |Q5|: *Onde e quanto os trabalhos sobre extensões FSPS foram publicados?*

Estratégia de Pesquisa
-------------------------
    - Os estudo primários serão coletados nas bases de dados listadas a seguir. As bases de dados foram escolhidas com base na experiência reportada por Dyba et al[#]_, no qual verificou-se que apenas as base `IEEE Explore`_ e `ACM Digital Library`_ retornavam resultados únicos e que as bibliotecas digitais `Scopus`_ e `Inspec/Compendex`_ eram capazes de reunir os artigos de diversas outras bases que foram utilizadas.

        - `IEEE Explore`_

        - `ACM Digital Library`_

        - `Scopus`_

        - `Inspec/Compendex`_

    - Os estudos serão recuperados através da pesquisa utilizando-se palavras chaves obtidas através
      da metodologia PICO [1]_. O framework PICO(Population, Intervention, Comparison and Outcomes)
      é sugerido por Kitchenham and Charters [1]_ e foi desenvolvido para ajudar pesquisadores na
      formulação de setença de busca com base nas questões de pesquisa.

    - Será utilizada a seguinte sentença de busca:
        .. _`sentença de busca`:

        - **("issue tracking" OR "bug tracking" OR "issue-tracking" OR "bug-tracking"  OR "bug
          repository" OR "issue repository") AND ("issue report" OR "bug report" OR "bug
          priorization" OR "bug fix" OR "bug assigment" OR "bug reassigment" OR "bug triage"    OR
          "duplicate bug" OR "reopened bug" OR "bug impact" OR "bug localization" OR "bug
          prediction"  OR "bug risk" OR "bug severity" OR "bug classification") AND ("extension" OR "plugin" OR "add-on" OR "tool" OR "improving" OR "personalization"))**



    - Resultados da aplicação da sentença de busca nas base `IEEE Explore`_ e
      `ACM Digital Library`_

      +------------------------+--------------------+
      | *Base*                 | *Total de Artigos* |
      +========================+====================+
      | `IEEE Explore`_        | 53                 |
      +------------------------+--------------------+
      | `ACM Digital Library`_ | 208                |
      +------------------------+--------------------+
      | Total                  | 261                |
      +------------------------+--------------------+

    .. figure:: /home/vagner/workspace/mapeamento-its/01-plan/piloto/img/ieee.png

    .. figure:: /home/vagner/workspace/mapeamento-its/01-plan/piloto/img/acm.png

Conjunto de Validação
---------------------
    - A fim de avaliar a `sentença de busca`_  proposta para recuperação dos estudos primários foi definido um *Conjunto de Validação*
    - Trata-se de um total de *20* artigos que serão utilizados para verificar a precisão da `sentença de busca`_
    - Os artigos no Conjunto de Validação foram selecionados com base no método proposto por Wohlin [#]_

      + Foi selecionados dois artigos em cada uma das base (`IEEE Explore`_ e `ACM Digital Library`_) definido pelo auto como os mais relevantes dentre aqueles mais citados
      + Foi selecionado dois artigos previamente definido pelo autor como relevante para o tema
      + A partir deste 06 artigos iniciais (conhecidos no trabalho do Wohlin como *inicial set*) foi realizado as técnicas de *Backward* e *Forward*
      + O processo foi repetido até fosse encontrado um total de 20 artigos
      + Caso o número de artigos ultrapasse 20 foram escolhidos aqueles com o maior número de citação

    - Ao final do processo foram inclúidos *98* artigos pelo método de snowballing

        - 23 artigos também foram recuperados através da sentença de busca

        - 75 artigos não foram passíveis de serem recuperados através da setença de busca

        - O percentual de artigos recuperados foi de aproximadamente 23%



Critérios de Inclusão e Exclusão
-------------------------------------
    - Critérios de Inclusão
        - Artigos publicados em conferências e periódicos (journals)
        - Artigos publicados até o ano de 2016 [2]_
        - Artigos escritos em língua inglesa
    - Critérios de Exclusão
        - Livros e literatura cinza (gray literature)
        - Artigos não escritos em língua inglesa
        - Artigos que não possue relação com FSPS

    - Será utilizada a ferramenta JabRef_  para remoção de possíveis duplicatas
    - Os artigos serão inicialmente selecionados através da leitura do título e resumo (Fase 01)
    - Posteriormente será realizada uma leitura completa do artigo afim de validar a sua inclusão no Mapeamento (Fase 02)
    - As fases 01 e 02 poderão ser realizadas mais de uma vez, realizando desta forma uma processo iterativo, caso o número de artigos incluídos ao final de cada fase seja grande ao ponto de inviabilizar a leitura completa dos mesmos.

Avaliação da Qualidade dos Artigos
-------------------------------------
    - A avaliação de qualidade dos estudos primários será realizada visando garantir que o artigo possui informação suficiente para responder as questões de pesquisa. Desta forma, esta etapa não será realizada com tanto rigor como é feito na Revisão Sistemática.

Processo de Extração e Classificação
--------------------------------------
    - A extração dos dados dos artigos será realizada através de formulário próprio a ser desenvolvido.

Apresentação do Mapeamento
-------------------------------

    - Os resultados do Mapeamento serão apresentados através de um artigo com a seguinte estrutura:
        - Introdução
        - Trabalhos Relacionados
        - Metodologia de Pesquisa
        - Resultados
        - Discussão/Conclusão
        - Apêndice como os artigos que foram incluídos e excluídos no Mapeamento.

.. ...........................................................................................
.. Replaces para melhor visualização do código

.. |Q1| replace:: *Q*\ :sub:`1`\
.. |Q2| replace:: *Q*\ :sub:`2`\
.. |Q3| replace:: *Q*\ :sub:`3`\
.. |Q4| replace:: *Q*\ :sub:`4`\
.. |Q5| replace:: *Q*\ :sub:`5`\
.. |Q6| replace:: *Q*\ :sub:`6`\



.. Link diversos

.. _JabRef: http://www.jabref.org/
.. _IEEE Explore: http://ieeexplore.ieee.org
.. _ACM Digital Library: http://dl.acm.org/
.. _Inspec/Compendex: https://www.engineeringvillage.com/
.. _Scopus: https://www.scopus.com/
.. ............................................................................................

.. Notas de rodapé
.. [1] Kitchenham, B. & Charters, S. (2007), Guidelines for performing Systematic Literature Reviews in Software Engineering, Technical Report EBSE 2007-001, Keele University and Durham University Joint Report.

.. [2] Inicialmente não será definida um período de início da pesquisa.
.. [#] Wohlin, Claes. "Guidelines for snowballing in systematic literature studies and a replication in software engineering." Proceedings of the 18th International Conference on Evaluation and Assessment in Software Engineering. ACM, 2014.
.. [#] T. Dyba, T. Dingsoyr and G. K. Hanssen, "Applying Systematic Reviews to Diverse Study Types: An Experience Report," First International Symposium on Empirical Software Engineering and Measurement (ESEM 2007), Madrid, 2007, pp. 225-234.