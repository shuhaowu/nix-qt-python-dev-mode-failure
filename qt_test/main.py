import sys

from PySide2.QtWidgets import QApplication, QLabel


def main():
  app = QApplication(sys.argv)
  label = QLabel("Hello World!")
  label.show()
  app.exec_()


if __name__ == "__main__":
  main()
