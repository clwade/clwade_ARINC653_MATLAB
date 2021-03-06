function [RETURN_CODE] = RAISE_APPLICATION_ERROR(ERROR_CODE,MESSAGE_ADDR,LENGTH)

global ERROR_CODE_TYPE;
global RETURN_CODE_TYPE;
global Process_Set;
global Current_Process;
if LENGTH < 0 || LENGTH >128
    RETURN_CODE = RETURN_CODE_TYPE.INVALID_PARAM
    return;
end

if ERROR_CODE ~= ERROR_CODE_TYPE.APPLICATION_ERROR
    RETURN_CODE = RETURN_CODE_TYPE.INVALID_PARAM
    return;
end

if isnan(Current_Process.ID) == 1 || isempty(Process_Set{1,255}) ==1
    disp(ERROR_CODE);
    HM_FUNCTION(MESSAGE_ADDR,LENGTH);
else
    Process_Set{1,255}.PROCESS_STATE = PROCESS_STATE_TYPE.READY;
    Current_Process = Process_Set{1,255};
end

RETURN_CODE = RETURN_CODE_TYPE.NO_ERROR
end

