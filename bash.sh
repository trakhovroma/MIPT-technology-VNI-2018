virtualenv myenv
source ./myenv/bin/activate
pip install -r requirments.txt
jupyter nbconvert --execute hw1.ipynb
firefox hw1.html
deactivate
