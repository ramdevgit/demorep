public Class VisualForceComponentController{

    public string Received_String {get;set;}

    public List<string> Received_List_string{get;set;}

    public List<sobject> Received_List_sObject{get;set;}

    public List<sobject> Display_sObj_List{get;set;}

    public List<string> FieldList{get;set;}

     

    public VisualForceComponentController(){

         System.debug('--@@Check the received parameters in constructor@@--'+ Received_String+Received_List_string+Received_List_sObject );

         FieldList = new List<string>();

         FieldList.add('name');

         FieldList.add('accountnumber');

          

    }

    

   Public void  Access_paramtrs_In_Controlr(){

        System.debug('--@@Check the received string in Method@@--'+ Received_String);

        System.debug('--@@Check the received strin List in Method@@--'+Received_List_string);

        System.debug('--@@Check the received sObject List in Method@@--'+Received_List_sObject );

   }

    

   Public List<sobject> getAccList(){

      Display_sObj_List =[select name,accountNumber,description from account where id IN: Received_List_sObject];

      return Display_sObj_List ;

   } 

}