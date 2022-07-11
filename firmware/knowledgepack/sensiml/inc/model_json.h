#ifndef __MODEL_JSON_H__
#define __MODEL_JSON_H__

const char recognition_model_string_json[] = {"{\"NumModels\":1,\"ModelIndexes\":{\"0\":\"ModelName\"},\"ModelDescriptions\":[{\"Name\":\"ModelName\",\"ClassMaps\":{\"1\":1,\"2\":2,\"3\":3,\"0\":\"Unknown\"},\"ModelType\":\"PME\",\"FeatureFunctions\":[\"Mean\",\"Mean\",\"Mean\"]}]}"};

int recognition_model_string_json_len = sizeof(recognition_model_string_json);

#endif /* __MODEL_JSON_H__ */
