from setuptools import setup, find_packages

setup(
  name="Test QT App",
  description="TestQt",
  packages=find_packages(),
  entry_points={
    "console_scripts": [
      "qt-test=qt_test.main:main"
    ],
  }
)
