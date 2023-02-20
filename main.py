
from importlib import import_module
from sys import path

path.insert(1, "./hengtai/")
main = import_module("hengtai.main")

main.run()
