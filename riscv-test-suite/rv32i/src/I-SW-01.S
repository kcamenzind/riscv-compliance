# RISC-V Compliance Test SW-01
#
#
# Copyright (c) 2019 Imperas Software Ltd., www.imperas.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
#
# Specification: RV32I Base Integer Instruction Set, Version 2.1
# Description: Testing instruction 'SW'.

#include "riscv_test_macros.h"
#include "compliance_test.h"
#include "compliance_io.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN


	RVTEST_IO_INIT
	RVTEST_IO_ASSERT_GPR_EQ(x31, x0, 0x00000000)
	RVTEST_IO_WRITE_STR(x31, "Test Begin\n")

	# ---------------------------------------------------------------------------------------------

	RVTEST_IO_WRITE_STR(x31, "# Test number 1\n")


    # Addresses for test results
	la	x5, test_1_res

    # Clear memory
    sw      x0, 0x0(x5)
    # Test
    li      x16, -0x1
    addi    x31, x5, 0
    sw      x16, 0x0(x31)

    #RVTEST_IO_ASSERT_GPR_EQ(x6, x31, test_1_res)
    RVTEST_IO_ASSERT_GPR_EQ(x6, x16, -0x1)
    # Clear memory
    sw      x0, 0x0(x5)
    # Test
    li      x15, 0x1
    addi    x30, x5, 0
    sw      x15, 0x0(x30)

    #RVTEST_IO_ASSERT_GPR_EQ(x6, x30, test_1_res)
    RVTEST_IO_ASSERT_GPR_EQ(x6, x15, 0x1)
    # Clear memory
    sw      x0, 0x0(x5)
    # Test
    li      x14, 0x0
    addi    x29, x5, 0
    sw      x14, 0x0(x29)

    #RVTEST_IO_ASSERT_GPR_EQ(x6, x29, test_1_res)
    RVTEST_IO_ASSERT_GPR_EQ(x6, x14, 0x0)
    # Clear memory
    sw      x0, -0x4(x5)
    # Test
    li      x13, 0x7ff
    addi    x28, x5, 0
    sw      x13, -0x4(x28)

    #RVTEST_IO_ASSERT_GPR_EQ(x6, x28, test_1_res)
    RVTEST_IO_ASSERT_GPR_EQ(x6, x13, 0x7ff)
    # Clear memory
    sw      x0, 0x0(x5)
    # Test
    li      x12, 0x0
    addi    x27, x5, 0
    sw      x12, 0x0(x27)

    #RVTEST_IO_ASSERT_GPR_EQ(x6, x27, test_1_res)
    RVTEST_IO_ASSERT_GPR_EQ(x6, x12, 0x0)


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 2\n")


    # Addresses for test results
	la	x1, test_2_res

    # Clear memory
    sw      x0, 0x4(x1)
    # Test
    li      x11, 0x800
    addi    x26, x1, 0
    sw      x11, 0x4(x26)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x26, test_2_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x11, 0x800)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x10, 0x7654321
    addi    x25, x1, 0
    sw      x10, 0x0(x25)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x25, test_2_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x10, 0x7654321)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x9, 0x7fffffff
    addi    x24, x1, 0
    sw      x9, 0x0(x24)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x24, test_2_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x9, 0x7fffffff)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x8, 0x1
    addi    x23, x1, 0
    sw      x8, 0x0(x23)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x23, test_2_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x8, 0x1)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x7, 0xffffffff
    addi    x22, x1, 0
    sw      x7, 0x0(x22)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x22, test_2_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x7, 0xffffffff)


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 3\n")


    # Addresses for test results
	la	x1, test_3_res

    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x6, 0x1234
    addi    x21, x1, 0
    sw      x6, 0x0(x21)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x21, test_3_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x6, 0x1234)
    # Clear memory
    sw      x0, -0x4(x1)
    # Test
    li      x5, 0x80000000
    addi    x20, x1, 0
    sw      x5, -0x4(x20)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x20, test_3_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x5, 0x80000000)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x4, -0x1234
    addi    x19, x1, 0
    sw      x4, 0x0(x19)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x19, test_3_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x4, -0x1234)
    # Clear memory
    sw      x0, 0x4(x1)
    # Test
    li      x3, -0x1
    addi    x18, x1, 0
    sw      x3, 0x4(x18)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x18, test_3_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x3, -0x1)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x2, -0x7ff
    addi    x17, x1, 0
    sw      x2, 0x0(x17)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x17, test_3_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x2, -0x7ff)


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 4\n")


    # Addresses for test results
	la	x2, test_4_res

    # Clear memory
    sw      x0, 0x0(x2)
    # Test
    li      x1, 0x0
    addi    x16, x2, 0
    sw      x1, 0x0(x16)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x16, test_4_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x1, 0x0)
    # Clear memory
    sw      x0, 0x0(x2)
    # Test
    li      x0, -0x1
    addi    x15, x2, 0
    sw      x0, 0x0(x15)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x15, test_4_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x0, 0)
    # Clear memory
    sw      x0, 0x0(x2)
    # Test
    li      x31, 0x1
    addi    x14, x2, 0
    sw      x31, 0x0(x14)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x14, test_4_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x31, 0x1)
    # Clear memory
    sw      x0, 0x0(x2)
    # Test
    li      x30, 0x0
    addi    x13, x2, 0
    sw      x30, 0x0(x13)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x13, test_4_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x30, 0x0)
    # Clear memory
    sw      x0, -0x4(x2)
    # Test
    li      x29, 0x7ff
    addi    x12, x2, 0
    sw      x29, -0x4(x12)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x12, test_4_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x29, 0x7ff)


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 5\n")


    # Addresses for test results
	la	x1, test_5_res

    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x28, 0x0
    addi    x11, x1, 0
    sw      x28, 0x0(x11)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x11, test_5_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x28, 0x0)
    # Clear memory
    sw      x0, 0x4(x1)
    # Test
    li      x27, 0x800
    addi    x10, x1, 0
    sw      x27, 0x4(x10)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x10, test_5_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x27, 0x800)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x26, 0x7654321
    addi    x9, x1, 0
    sw      x26, 0x0(x9)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x9, test_5_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x26, 0x7654321)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x25, 0x7fffffff
    addi    x8, x1, 0
    sw      x25, 0x0(x8)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x8, test_5_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x25, 0x7fffffff)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x24, 0x1
    addi    x7, x1, 0
    sw      x24, 0x0(x7)

    #RVTEST_IO_ASSERT_GPR_EQ(x2, x7, test_5_res)
    RVTEST_IO_ASSERT_GPR_EQ(x2, x24, 0x1)


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 6\n")


    # Addresses for test results
	la	x1, test_6_res

    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x23, 0xffffffff
    addi    x6, x1, 0
    sw      x23, 0x0(x6)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x6, test_6_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x23, 0xffffffff)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x22, 0x1234
    addi    x5, x1, 0
    sw      x22, 0x0(x5)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x5, test_6_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x22, 0x1234)
    # Clear memory
    sw      x0, -0x4(x1)
    # Test
    li      x21, 0x80000000
    addi    x4, x1, 0
    sw      x21, -0x4(x4)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x4, test_6_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x21, 0x80000000)
    # Clear memory
    sw      x0, 0x0(x1)
    # Test
    li      x20, -0x1234
    addi    x3, x1, 0
    sw      x20, 0x0(x3)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x3, test_6_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x20, -0x1234)
    # Clear memory
    sw      x0, 0x4(x1)
    # Test
    li      x19, -0x1
    addi    x2, x1, 0
    sw      x19, 0x4(x2)

    #RVTEST_IO_ASSERT_GPR_EQ(x7, x2, test_6_res)
    RVTEST_IO_ASSERT_GPR_EQ(x7, x19, -0x1)


	# ---------------------------------------------------------------------------------------------
	RVTEST_IO_WRITE_STR(x31, "# Test number 7\n")


    # Addresses for test results
	la	x2, test_7_res

    # Clear memory
    sw      x0, 0x0(x2)
    # Test
    li      x18, -0x7ff
    addi    x1, x2, 0
    sw      x18, 0x0(x1)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x1, test_7_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x18, -0x7ff)
    # Clear memory
    sw      x0, 0x0(x2)
    # Test
    li      x17, 0x0
    addi    x1, x2, 0
    sw      x17, 0x0(x1)

    #RVTEST_IO_ASSERT_GPR_EQ(x3, x1, test_7_res)
    RVTEST_IO_ASSERT_GPR_EQ(x3, x17, 0x0)


	# ---------------------------------------------------------------------------------------------
	
	RVTEST_IO_WRITE_STR(x31, "Test End\n")

	# ---------------------------------------------------------------------------------------------

	RV_COMPLIANCE_HALT

RV_COMPLIANCE_CODE_END

# Input data section.
	.data

# Output data section.
RV_COMPLIANCE_DATA_BEGIN

test_1_res:
	.fill 5, 4, -1
test_2_res:
	.fill 5, 4, -1
test_3_res:
	.fill 5, 4, -1
test_4_res:
	.fill 5, 4, -1
test_5_res:
	.fill 5, 4, -1
test_6_res:
	.fill 5, 4, -1
test_7_res:
	.fill 5, 4, -1

RV_COMPLIANCE_DATA_END

