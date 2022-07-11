#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app_config/bmi160/bmi160_sensor.c bmi160/bmi160.c ../knowledgepack/knowledgepack_project/sml_output.c ../knowledgepack/knowledgepack_project/sml_recognition_run.c mcc_generated_files/i2c1.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c sensiml/ssi_comms.c main.c buffer.c ringbuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o ${OBJECTDIR}/bmi160/bmi160.o ${OBJECTDIR}/_ext/1798900010/sml_output.o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/sensiml/ssi_comms.o ${OBJECTDIR}/main.o ${OBJECTDIR}/buffer.o ${OBJECTDIR}/ringbuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d ${OBJECTDIR}/bmi160/bmi160.o.d ${OBJECTDIR}/_ext/1798900010/sml_output.o.d ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/sensiml/ssi_comms.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/buffer.o.d ${OBJECTDIR}/ringbuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o ${OBJECTDIR}/bmi160/bmi160.o ${OBJECTDIR}/_ext/1798900010/sml_output.o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/sensiml/ssi_comms.o ${OBJECTDIR}/main.o ${OBJECTDIR}/buffer.o ${OBJECTDIR}/ringbuffer.o

# Source Files
SOURCEFILES=app_config/bmi160/bmi160_sensor.c bmi160/bmi160.c ../knowledgepack/knowledgepack_project/sml_output.c ../knowledgepack/knowledgepack_project/sml_recognition_run.c mcc_generated_files/i2c1.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/tmr1.c sensiml/ssi_comms.c main.c buffer.c ringbuffer.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o: app_config/bmi160/bmi160_sensor.c  .generated_files/flags/default/c89e75db309fc282fd658a9f4b057acec1c0c2f4 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/app_config/bmi160" 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_config/bmi160/bmi160_sensor.c  -o ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bmi160/bmi160.o: bmi160/bmi160.c  .generated_files/flags/default/e69bf97ca41751e6c1e6ac75c897c75c56cbabc6 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/bmi160" 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o.d 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bmi160/bmi160.c  -o ${OBJECTDIR}/bmi160/bmi160.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bmi160/bmi160.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_output.o: ../knowledgepack/knowledgepack_project/sml_output.c  .generated_files/flags/default/dedcd4d44a5c889881f065470f555258b572726c .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_output.c  -o ${OBJECTDIR}/_ext/1798900010/sml_output.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_output.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o: ../knowledgepack/knowledgepack_project/sml_recognition_run.c  .generated_files/flags/default/c10f7123be54b59c423eb9d5af145260525847e5 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_recognition_run.c  -o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/ca52f2c47c5ba1b3f03a1b1c3f4d7cf1ae0d0560 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/29967173f131183d1b59987e74f7f6b1bdac0d19 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/b06e2259a261140ccff021b12f86aefe591e016a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/7582762ea0ecfeb8160296e723400f924d6bb278 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/be7dd3354548b362252fce8077837d288db56ab7 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/7640a4481843e9efdecdf0577660edf0e391d52a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/791d22a7e7c3a0b96d87c3a9693c15e552ab88a5 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/974896b8086a49f6f06a756fd85eec0f85aac4bf .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/8428cab7dfa3754cff3e3cac09d4ac59e29e8e85 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sensiml/ssi_comms.o: sensiml/ssi_comms.c  .generated_files/flags/default/9ecb22a4964c252369465be44585d25c6c3986b2 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/sensiml" 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sensiml/ssi_comms.c  -o ${OBJECTDIR}/sensiml/ssi_comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sensiml/ssi_comms.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/64b8b21b868865413dd7e1875913b8ef49fb2ce8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/buffer.o: buffer.c  .generated_files/flags/default/50f12fcbaa5da66e5cc2f9ab5c977990d0a585f8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buffer.o.d 
	@${RM} ${OBJECTDIR}/buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  buffer.c  -o ${OBJECTDIR}/buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ringbuffer.o: ringbuffer.c  .generated_files/flags/default/cb607aca08eee5a7a8ee5a8add0213fd24b814bd .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/ringbuffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ringbuffer.c  -o ${OBJECTDIR}/ringbuffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ringbuffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o: app_config/bmi160/bmi160_sensor.c  .generated_files/flags/default/5dc1233243edcd0ed19814b07d17056308205602 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/app_config/bmi160" 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_config/bmi160/bmi160_sensor.c  -o ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bmi160/bmi160.o: bmi160/bmi160.c  .generated_files/flags/default/e7eab0819388ecad7077c4f387813f1fcfdfa38a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/bmi160" 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o.d 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bmi160/bmi160.c  -o ${OBJECTDIR}/bmi160/bmi160.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bmi160/bmi160.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_output.o: ../knowledgepack/knowledgepack_project/sml_output.c  .generated_files/flags/default/1ae6520dedbbfd5de7fe9b6a09f050fbcec9d413 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_output.c  -o ${OBJECTDIR}/_ext/1798900010/sml_output.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_output.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o: ../knowledgepack/knowledgepack_project/sml_recognition_run.c  .generated_files/flags/default/1f07b3479aa2e3a6100f0bae8afbd9bc4c63618f .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_recognition_run.c  -o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/f4305d84ee144635df03331e312527b750f882b8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/dcb6b6b0ea14197e00def96990ced45b9764f0c3 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/e49065eebcd17f159797958aa880c6e2051a3fc0 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/f9451bfca3da5899de24cb63d7374a72af0e06e3 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/223e331b9950936c62c1db57df408115f41d9e62 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/ea5a25d7c374d4cc3c5bff0aca0b2321fc533915 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/26c3d1ee97adede0de54a19fd45686446818ce35 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/10b58f3e50c9ae75fbe952507c60c040d6ce7f38 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/cbad304197bbe226b56e0d984a39d93bb2ac5e0c .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sensiml/ssi_comms.o: sensiml/ssi_comms.c  .generated_files/flags/default/45fddc4e412105bb3d92a7681fff5ba420823606 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/sensiml" 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sensiml/ssi_comms.c  -o ${OBJECTDIR}/sensiml/ssi_comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sensiml/ssi_comms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/9aa963c92d4b27c5dd9cbfd143dfd563aa8e3e57 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/buffer.o: buffer.c  .generated_files/flags/default/91488c09c4fdc41403a4fff341fb8ceeb955f6a6 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buffer.o.d 
	@${RM} ${OBJECTDIR}/buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  buffer.c  -o ${OBJECTDIR}/buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ringbuffer.o: ringbuffer.c  .generated_files/flags/default/be063be04819261d65953b7834719647a8c2cf9a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/ringbuffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ringbuffer.c  -o ${OBJECTDIR}/ringbuffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ringbuffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../knowledgepack/sensiml/lib/libsensiml.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ..\knowledgepack\sensiml\lib\libsensiml.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../knowledgepack/sensiml/lib/libsensiml.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ..\knowledgepack\sensiml\lib\libsensiml.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/ml-pic-iot-imu-sensiml-template.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
