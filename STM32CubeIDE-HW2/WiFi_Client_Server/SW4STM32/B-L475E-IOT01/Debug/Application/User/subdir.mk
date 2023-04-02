################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/NTU/111-2/ESLAB/HW2/STM32CubeIDE-HW2/WiFi_Client_Server/Src/main.c \
D:/NTU/111-2/ESLAB/HW2/STM32CubeIDE-HW2/WiFi_Client_Server/Src/stm32l4xx_it.c 

OBJS += \
./Application/User/main.o \
./Application/User/stm32l4xx_it.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/stm32l4xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: D:/NTU/111-2/ESLAB/HW2/STM32CubeIDE-HW2/WiFi_Client_Server/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Drivers/BSP/Components/lsm6dsl -I../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32l4xx_it.o: D:/NTU/111-2/ESLAB/HW2/STM32CubeIDE-HW2/WiFi_Client_Server/Src/stm32l4xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Drivers/BSP/Components/lsm6dsl -I../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32l4xx_it.cyclo ./Application/User/stm32l4xx_it.d ./Application/User/stm32l4xx_it.o ./Application/User/stm32l4xx_it.su

.PHONY: clean-Application-2f-User

