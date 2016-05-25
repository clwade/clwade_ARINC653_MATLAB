function [RETURN_CODE,ERROR_STATUS] = GET_ERROR_STATUS()
global RETURN_CODE_TYPE;
global Process_Error_List;

if isnan(Current_Process.ID) ~= 1 
    RETURN_CODE = RETURN_CODE_TYPE.INVALID_CONFIG
    return;
end

if isnan(ERROR_STATUS.FAILED_PROCESS_ID) == 1
    RETURN_CODE = RETURN_CODE_TYPE.NO_ACTION
    return;
end

ERROR_STATUS = Process_Error_List{1,1};
Process_Error_List(1) = []; 
RETURN_CODE = RETURN_CODE_TYPE.NO_ERROR
end


