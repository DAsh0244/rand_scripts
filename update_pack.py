import pip
from subprocess import call
import sys

for dist in pip.get_installed_distributions():
	call("pip install --upgrade " + dist.project_name, shell=True)

sys.exit(0)
