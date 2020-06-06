# FILE:  replace_imports.pl
#
# Purpose:  to replace Qt classes used by pyside2-uic
#           with fully delimited names in the
#           PySide module shipped with FreeCAD


while(<>) {
    if ($_ =~ m/^class.*$/) {
        last;
    }
}
print $_;

while(<>)
{
    # $_ =~ s/^from.*import.*$//;
    $_ =~ s/\bQCoreApplication\b/PySide.QtCore.QCoreApplication/g;
    $_ =~ s/\bQMetaObject\b/PySide.QtCore.QMetaObject/g;
    $_ =~ s/\bQSize\b/PySide.QtCore.QSize/g;
    $_ =~ s/\bQt\b/PySide.QtCore.Qt/g;
    $_ =~ s/\bQDialog\b/PySide.QtGui.QDialog/g;
    $_ =~ s/\bQFont\b/PySide.QtGui.QFont/g;
    $_ =~ s/\bQLayout\b/PySide.QtGui.QLayout/g;
    $_ =~ s/\bQVBoxLayout\b/PySide.QtGui.QVBoxLayout/g;
    $_ =~ s/\bQHBoxLayout\b/PySide.QtGui.QHBoxLayout/g;
    $_ =~ s/\bQDialog\b/PySide.QtGui.QDialog/g;
    $_ =~ s/\bQLabel\b/PySide.QtGui.QLabel/g;
    $_ =~ s/\bQPushButton\b/PySide.QtGui.QPushButton/g;
    $_ =~ s/\bQCheckBox\b/PySide.QtGui.QCheckBox/g;
    $_ =~ s/\bQComboBox\b/PySide.QtGui.QComboBox/g;
    $_ =~ s/\bQDoubleSpinBox\b/PySide.QtGui.QDoubleSpinBox/g;
    $_ =~ s/\bQSlider\b/PySide.QtGui.QSlider/g;
    
    print $_;
}
