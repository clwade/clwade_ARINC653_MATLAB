classdef ERROR_STATUS_TYPE
    properties
        ERROR_CODE;
        MESSAGE;
        LENGTH;
        FAILED_PROCESS_ID;
        FAILED_ADDRESS;
    end
    
    methods
        function ERROR_STATUS = ERROR_STATUS_TYPE(error_code,message,length,failed_process_id,failed_address)
                ERROR_STATUS.ERROR_CODE = error_code;
                ERROR_STATUS.MESSAGE = message;
                ERROR_STATUS.LENGTH = length;
                ERROR_STATUS.FAILED_PROCESS_ID = failed_process_id;
                ERROR_STATUS.FAILED_ADDRESS = failed_address;
        end
    end
end