#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
@date  2016-05-03
@author: Vagner Clementino
'''
import logging
from datetime import datetime


class ITSGoogleTrendsError(Exception):
    '''
    Classe para gerenciar a exibição de erro para o usuário
    Atributos:
       mensagem: a mensagem a se exibida ao usuário
    '''

    def __init__(self, mensagem):
        logging.basicConfig(format='%(levelname)s %(message)s', level=logging.DEBUG)
        self.__mensagem = mensagem

    def __getFormatedTime(self):
        formatedString = "[{0}]".format(datetime.now().strftime('%d/%m/%Y - %H:%M:%S'))

        return (formatedString)

    def show_error(self):
        logging.critical("{0} {1}".format(self.__getFormatedTime(), self.__mensagem))
