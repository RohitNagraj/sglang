HF_HOME="/data/"
cd /Work/dev/sglang/test/srt
# SGLANG_AMD_CI=1 SGLANG_IS_IN_CI=1 SGLANG_USE_AITER=1 python3 run_suite.py --suite per-commit-8-gpu-amd 2>&1 | tee per-commit-8-gpu-amd.txt
# SGLANG_AMD_CI=1 SGLANG_IS_IN_CI=1 SGLANG_USE_AITER=1 python3 run_suite.py --suite nightly-amd 2>&1 | tee nightly-amd.txt
SGLANG_AMD_CI=1 SGLANG_IS_IN_CI=1 SGLANG_USE_AITER=1 python3 run_suite.py --suite per-commit-amd  --range-begin 46 --range-end 47
