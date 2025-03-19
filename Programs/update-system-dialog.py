from PyQt5.QtWidgets import QApplication, QDialog, QPushButton, QGridLayout, QStackedWidget, QLabel
from PyQt5.QtGui import QIcon
import sys
import subprocess

#Run shell commands and retrieve output:
#result = subprocess.Popen("ls -l", stdout=subprocess.PIPE, shell=True)
#output = result.stdout.read()

class CustomDialog(QDialog):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Update System")
        self.resize(400, 200)



        #Create layout for main  menu
        layoutMain = QGridLayout()

        buttonPacman = QPushButton("Update Pacman")
        buttonFlatpak = QPushButton("Update Flatpaks")
        buttonAll = QPushButton("Update all")
        buttonCancel = QPushButton("Cancel")

        buttonPacman.setIcon(QIcon())
        buttonFlatpak.setIcon(QIcon())
        buttonAll.setIcon(QIcon())
        buttonCancel.setIcon(QIcon())

        layoutMain.addWidget(buttonPacman,0,0)
        layoutMain.addWidget(buttonFlatpak,0,1)
        layoutMain.addWidget(buttonAll,0,2)
        layoutMain.addWidget(buttonCancel,1,2)





        #Create Pacman layout





        #Create Flatpak layout



        #Create Layout for all packages

        self.setLayout(layoutMain)

        buttonCancel.clicked.connect(self.close)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    dialog = CustomDialog()
    dialog.show()
    sys.exit(app.exec_())
