#CUDA_VISIBLE_DEVICES=3 
python ./run_benchmark.py --model microsoft/Phi-3-mini-4k-instruct  --stream --mean_prompt_length 500 --mean_max_new_tokens 150 500 1024 --backend vllm --overwrite_results
python ./run_benchmark.py --model /shared/liliang/samba_posttrain_43L_dpo  --stream --mean_prompt_length 500 --mean_max_new_tokens 150 500 1024 --backend vllm --overwrite_results
