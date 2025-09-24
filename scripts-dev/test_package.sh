cd /home/rpujarna/

rm -rf p310
rm -rf p311
rm -rf p312
rm -rf p313

uv venv p310 -p 3.10
uv venv p311 -p 3.11
uv venv p312 -p 3.12
uv venv p313 -p 3.13

source /home/rpujarna/p310/bin/activate
# uv pip install -i https://test.pypi.org/simple/ sgl-kernel-rpujarna-test==0.3.10
uv pip install /home/rpujarna/Work/dev/sglang/sgl-kernel/dist/sgl_kernel-0.3.10-cp310-abi3-manylinux2014_x86_64.whl
uv pip install numpy
uv pip install torch --index-url https://download.pytorch.org/whl/rocm6.4
deactivate

source /home/rpujarna/p311/bin/activate
# uv pip install -i https://test.pypi.org/simple/ sgl-kernel-rpujarna-test==0.3.10
uv pip install /home/rpujarna/Work/dev/sglang/sgl-kernel/dist/sgl_kernel-0.3.10-cp310-abi3-manylinux2014_x86_64.whl
uv pip install numpy
uv pip install torch --index-url https://download.pytorch.org/whl/rocm6.4
deactivate

source /home/rpujarna/p312/bin/activate
# uv pip install -i https://test.pypi.org/simple/ sgl-kernel-rpujarna-test==0.3.10
uv pip install /home/rpujarna/Work/dev/sglang/sgl-kernel/dist/sgl_kernel-0.3.10-cp310-abi3-manylinux2014_x86_64.whl
uv pip install numpy
uv pip install torch --index-url https://download.pytorch.org/whl/rocm6.4
deactivate

source /home/rpujarna/p313/bin/activate
# uv pip install -i https://test.pypi.org/simple/ sgl-kernel-rpujarna-test==0.3.10
uv pip install /home/rpujarna/Work/dev/sglang/sgl-kernel/dist/sgl_kernel-0.3.10-cp310-abi3-manylinux2014_x86_64.whl
uv pip install numpy
uv pip install torch --index-url https://download.pytorch.org/whl/rocm6.4
deactivate
