function GET_PROCESS_ID (PROCESS_NAME)
        global ID;
        
        global RETURN_CODE_TYPE;
        
        x=INVALIDE_NAME(PROCESS_NAME);
%         fprintf('%d\n',x)
        if x == 0
 			
		 	RETURN_CODE = RETURN_CODE_TYPE.INVALID_PARAM;
			return;
        end
         
         x=INVALIDE_NAME(PROCESS_NAME);
		if x==1
			
			RETURN_CODE = RETURN_CODE_TYPE.INVALID_CONFIG;
			return;
        end
		
i=1
 		for i = 1:255
            if strcmp( Process_NAME_Set{1,i},PROCESS_NAME ) == 1
                fprintf('%d\n',i)
                ID = i;
            end
        end
        
 	    PROCESS_ID = ID;
        PRO.disp()
		RETURN_CODE = RETURN_CODE_TYPE.NO_ERROR;
		return;
end