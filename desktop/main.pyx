cdef extern from *:
    void initgraphics()
    void init_io()
    void initfreecivclient()

include "main_common.pxi"

def main():
    init_io()
    initgraphics()
    initfreecivclient()

    import sys

    sys.path = []
    sys.path = ['modules.zip']

    import os

    unpack_data()

    sys.path = [os.path.abspath('modules.zip')]

    import freeciv.main
    freeciv.main.main()

main()
