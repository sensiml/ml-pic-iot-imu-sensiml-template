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
${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o: app_config/bmi160/bmi160_sensor.c  .generated_files/flags/default/166d5a6dd1571ae485aa0773f82a4cd68762c99f .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/app_config/bmi160" 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_config/bmi160/bmi160_sensor.c  -o ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bmi160/bmi160.o: bmi160/bmi160.c  .generated_files/flags/default/50a36ea531e99e964d94acd698430abc0abd787 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/bmi160" 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o.d 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bmi160/bmi160.c  -o ${OBJECTDIR}/bmi160/bmi160.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bmi160/bmi160.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_output.o: ../knowledgepack/knowledgepack_project/sml_output.c  .generated_files/flags/default/95fd21a0659059efdd9514be5e538bcb406e1ae8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_output.c  -o ${OBJECTDIR}/_ext/1798900010/sml_output.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_output.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o: ../knowledgepack/knowledgepack_project/sml_recognition_run.c  .generated_files/flags/default/a135f3df257a28493f80e86100cc94beb6ad63f1 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_recognition_run.c  -o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/aa9c04a48c36fe491168d039b34cc350f82aa650 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/3778a0eaae86938ee72a08a484a4c013844985f8 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/31c963a1418116a971601e9e40e10685462afd89 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/204edf1a2518b76db67f7525b7b0919e5e21b34a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/c27136aa03ce176c896e53f9a67cfa14de379924 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/3d49824b273933c39fb0747745be4585af2265d .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/424c531e7f3c1f2d2db365dab15ea9d21737a1b9 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/927308ece1cd739621256b4cb731afac94d8991b .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/4e7dbc5e917e16ea3d6f3342c501ad005772c45f .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sensiml/ssi_comms.o: sensiml/ssi_comms.c  .generated_files/flags/default/7b41894a1a347a97da8e5aa5b180ae46c49eaddb .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/sensiml" 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sensiml/ssi_comms.c  -o ${OBJECTDIR}/sensiml/ssi_comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sensiml/ssi_comms.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4d153bb83a2f58949fe5b7a8f8385750b1628169 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/buffer.o: buffer.c  .generated_files/flags/default/ad0aa584c77d475031d057e4d097cbc74a074e04 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buffer.o.d 
	@${RM} ${OBJECTDIR}/buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  buffer.c  -o ${OBJECTDIR}/buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ringbuffer.o: ringbuffer.c  .generated_files/flags/default/b31a2b8138436a72c0f1ce7fc6cd06867cc61ae0 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/ringbuffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ringbuffer.c  -o ${OBJECTDIR}/ringbuffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ringbuffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o: app_config/bmi160/bmi160_sensor.c  .generated_files/flags/default/95fe8f5721924a58a05c120d8be38b5fb9ef286b .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/app_config/bmi160" 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app_config/bmi160/bmi160_sensor.c  -o ${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app_config/bmi160/bmi160_sensor.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bmi160/bmi160.o: bmi160/bmi160.c  .generated_files/flags/default/1fffab2c01b18bf302f3e4a353e10c4acc3bd204 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/bmi160" 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o.d 
	@${RM} ${OBJECTDIR}/bmi160/bmi160.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bmi160/bmi160.c  -o ${OBJECTDIR}/bmi160/bmi160.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bmi160/bmi160.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_output.o: ../knowledgepack/knowledgepack_project/sml_output.c  .generated_files/flags/default/760991d578ec45ff84b430ca1d19f8054854bf35 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_output.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_output.c  -o ${OBJECTDIR}/_ext/1798900010/sml_output.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_output.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o: ../knowledgepack/knowledgepack_project/sml_recognition_run.c  .generated_files/flags/default/e300d8912d01b1d855cbe2248981af193a2bd7f4 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/_ext/1798900010" 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../knowledgepack/knowledgepack_project/sml_recognition_run.c  -o ${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1798900010/sml_recognition_run.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/c9bdde20572dcdc4cab6f93d0fade394b51ec45c .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/2f31dc108d5ac19847f89e67f72045524f5e33 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/f4af27cb02a92dff535ab86685ff01bce4e6d598 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/438a6f081827ab73675a4b7499807ecd40bcc197 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/f991f71043140f65f2f0662b54db37c5207ea28b .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/9b7c457172b7c9a06bc5cddd8e9960a5fda91ff2 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/15d08b6b4baf074dcb92098131d6d32e60aaa374 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/43dfcfade62a17996d01c10cb7508c7803c68dc6 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/6cd4dee9b58595919a51732b932c178291417396 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sensiml/ssi_comms.o: sensiml/ssi_comms.c  .generated_files/flags/default/e88d61b2bcef896c50906354ad2fbe17059eeec9 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}/sensiml" 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o.d 
	@${RM} ${OBJECTDIR}/sensiml/ssi_comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sensiml/ssi_comms.c  -o ${OBJECTDIR}/sensiml/ssi_comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sensiml/ssi_comms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/dd5f3a12dbca2784dea2691c87458817e52fb8fc .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/buffer.o: buffer.c  .generated_files/flags/default/1683cb27db0176906f3da221818d4ceea2183669 .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buffer.o.d 
	@${RM} ${OBJECTDIR}/buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  buffer.c  -o ${OBJECTDIR}/buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/ringbuffer.o: ringbuffer.c  .generated_files/flags/default/4118a38584e2e1cc178a0a5ef6e0454f9d909c8a .generated_files/flags/default/2396621ffd89f991a1233abe683155a9c3d62545
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/ringbuffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ringbuffer.c  -o ${OBJECTDIR}/ringbuffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ringbuffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"../knowledgepack/knowledgepack_project" -mlarge-code -O0 -I"../knowledgepack/knowledgepack_project" -I"../knowledgepack/sensiml" -I"sensiml" -I"." -I"../knowledgepack/sensiml/inc" -I"mcc_generated_files" -DSNSR_TYPE_BMI160=1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
