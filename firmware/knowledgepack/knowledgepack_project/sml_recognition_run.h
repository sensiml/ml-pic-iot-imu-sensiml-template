#ifndef __SML_RECOGNITION_RUN_H__
#define __SML_RECOGNITION_RUN_H__
#include "app_config.h"
#include "kb.h"

int sml_recognition_run(signed short *data_batch, int batch_sz, uint8_t num_sensors, uint32_t sensor_id);

#endif //__SML_RECOGNITION_RUN_H__
