function [RETURN_CODE] = INSERT_INTO_EVENT_PROCESS_QUEUE(PROCESS_ID,EVENT_ID)

global Event_Set;
global RETURN_CODE_TYPE;

for i = 1:256
    if isempty(Event_Set{1,i}) == 1
        continue;
    elseif Event_Set{1,i}.ID == EVENT_ID
        Event_Set{1,i}.WAITING_PROCESSES(numel(Event_Set{1,i}.WAITING_PROCESSES)+1) = PROCESS_ID;
        RETURN_CODE = RETURN_CODE_TYPE.NO_ERROR
        disp(['INSERT PROCESS ',num2str(PROCESS_ID),' INTO EVENT ',num2str(EVENT_ID),' PROCESS QUEUE SUCESSFULLY! ']);
        return;
    elseif i > 256
        RETURN_CODE = RETURN_CODE_TYPE.INVALID_PARAM
        disp('INVALID PARAMETER!!');
    end
end
end
        
        