# coding=utf-8
from datetime import datetime
from pytrends.pyGTrends import pyGTrends
import time
from random import randint
from control.ITSGoogleTrendsError import ITSGoogleTrendsError
import rows

class ITSGoogleTrends(object):

    _DEFAUT_KEYWORD = "software engineering"

    # Definindo o caminho do arquivo .csv
    _CSV_FILE_PATH = "/home/vagner/workspace/ITSGoogleTrends/inputs/"
    _CSV_FILE_NAME = "Lista_ITS_Wikipedia.csv"



    def run(self):
        google_username = "vagner.clementino@gmail.com"
        google_password = "DmEcr7Mat25csDzL5MSoUDNeSyYnk+60dBFZlmfhWy4="
        path = "/home/vagner/workspace/ITSGoogleTrends/output/"

        # connect to Google
        try:
            self.show("Realizando conexão com usuário " + google_username)
            connector = pyGTrends(google_username, google_password)
            self.show("Conexão realizada com sucesso")
        except Exception as e:
            raise ITSGoogleTrendsError ("Erro durante a conexão com o Google.")
        #montando a string de requisicao

        # Lendo os dados do arquivo csv
        table = rows.import_from_csv(self._CSV_FILE_PATH + self._CSV_FILE_NAME)

        rows_number = len(table)
        index = 0

        for row in table:
            its_name = str(row.system).lower()
            index = index + 1
            self.show("Início da busca dos dados de tendência para o ITS: {0:s} [{1:d}/{2:d}]".format(its_name,index,rows_number))
            str_request =  self._DEFAUT_KEYWORD + "," + its_name

            self.show("Realizando uma requisição com a sentença " + str_request)
            # make request
            connector.request_report(str_request)

            # download file
            self._now = str(datetime.now().strftime('%Y-%m-%d-%H-%M-%S'))
            csv_file_name = "{0:s}-{1:s}".format(self._now, str_request.replace(",", "-").replace(" ","-"))
            connector.save_csv(path, csv_file_name)
            self.show("Resultados escritos no arquivos {0:s}.csv".format(csv_file_name))

            # wait a random amount of time between requests to avoid bot detection
            wait_time = randint(5, 10)
            self.show("Aguardando {0:d} segundos para uma nova requisição".format(wait_time))
            time.sleep(wait_time)
        #end for
        self.show("Execução realizada com sucesso!")


     # end run
    def __getFormatedTime(self):
        formatedString = "[{0}]".format(datetime.now().strftime('%d/%m/%Y - %H:%M:%S'))
        return (formatedString)

    def show(self, message):
        print(self.__getFormatedTime() + " " +  message)
    # end show
# end class