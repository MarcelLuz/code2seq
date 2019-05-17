:: Change the following values to train a new model.
:: type: the name of the new model, only affects the saved file name.
:: dataset: the name of the dataset, as was preprocessed using preprocess.sh
:: test_data: by default, points to the validation set, since this is the set that
:: will be evaluated after each training iteration. If you wish to test
:: on the final (held-out) test set, change 'val' to 'test'.

set type=java-small-model
set dataset_name=java-small
set data_dir=data\java-small
set data=%data_dir%\%dataset_name%
set test_data=%data_dir%\%dataset_name%.val.c2s
set model_dir=models\%type%


md %model_dir%

python -u code2seq.py --data %data% --test %test_data% --save_prefix %model_dir%\model