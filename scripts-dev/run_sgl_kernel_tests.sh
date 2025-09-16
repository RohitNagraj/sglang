# This runs the unit-test-sgl-kernel-amd from .github/workflows/pr-test-amd.yml

bash scripts/ci/amd_ci_start_container.sh
bash scripts/ci/amd_ci_install_dependency.sh
docker exec -w /sglang-checkout/sgl-kernel/tests ci_sglang python3 -m pytest test_moe_align.py test_moe_topk_softmax.py test_apply_token_bitmask_inplace.py test_activation.py test_kvcacheio.py speculative/test_eagle_utils.py