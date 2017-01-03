#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
@date: 2016-05-03
@author: Vagner Clementino
"""
import sys
from control.ITSGoogleTrends import ITSGoogleTrends
from control.ITSGoogleTrendsError import ITSGoogleTrendsError

if __name__ == '__main__':

    try:
        itsgTends = ITSGoogleTrends()

        itsgTends.run()
    except ITSGoogleTrendsError as e:
        e.show_error()
        sys.exit(1)

