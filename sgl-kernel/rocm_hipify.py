# Copyright 2025 SGLang Team. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

from pathlib import Path

import torch
from torch.utils.cpp_extension import CUDAExtension

root = Path(__file__).parent.resolve()

include_dirs = [
    root / "include",
    root / "include" / "impl",
    root / "csrc",
]

sources = [
    "csrc/allreduce/custom_all_reduce.hip",
    "csrc/allreduce/quick_all_reduce.cu",
    "csrc/common_extension_rocm.cc",
    "csrc/elementwise/activation.cu",
    "csrc/grammar/apply_token_bitmask_inplace_cuda.cu",
    "csrc/moe/moe_align_kernel.cu",
    "csrc/moe/moe_topk_softmax_kernels.cu",
    "csrc/speculative/eagle_utils.cu",
    "csrc/kvcacheio/transfer.cu",
]

libraries = ["hiprtc", "amdhip64", "c10", "torch", "torch_python"]

ext_modules = [
    CUDAExtension(
        name="sgl_kernel.common_ops",
        sources=sources,
        include_dirs=include_dirs,
        libraries=libraries,
        py_limited_api=False,
    ),
]
