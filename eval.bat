set type=java-small-model
set dataset_name=java-small
set data_dir=data\java-small
set data=%data_dir%\%dataset_name%
set test_data=%data_dir%\%dataset_name%.test.c2s
set model_dir=models\%type%
set model_name=model_iter52.release
set model=model_dir\%model_name%


python code2seq.py --load %model% --test %test_data%