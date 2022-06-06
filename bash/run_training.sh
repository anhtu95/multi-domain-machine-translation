#!/bin/bash

if [ -d "venv/" ]; then
  source venv/bin/activate
else
  python3 -m venv venv
  source venv/bin/activate
  pip install -r requirements.txt
  python -m spacy download en_core_web_sm
  python -m spacy download de_core_news_sm
fi
python training.py --data_dir ./datasets/de-en/news ./datasets/de-en/ted --model_type 2
deactivate