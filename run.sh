PROJECT_NAME="$1"

if [ "$PROJECT_NAME" ]; then
  echo "$PROJECT_NAME/*" >> .gitignore

  if [ ! -d "$PROJECT_NAME" ]; then
    wagtail start $PROJECT_NAME
  fi

  cd $PROJECT_NAME

  python manage.py migrate
  python manage.py update_index
  python manage.py runserver 0.0.0.0:8000
else
  echo "Usage: run.sh <myproject>"
fi
