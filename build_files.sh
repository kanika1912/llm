echo "BUILD START"
python3.9 -m ensurepip

# Upgrade pip
python3.9 -m pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Collect static files (if any)
python3.9 manage.py collectstatic --noinput

# Run migrations
python3.9 manage.py migrate
echo "BUILD END"