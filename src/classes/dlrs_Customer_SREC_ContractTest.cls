/**
 * Auto Generated and Deployed by the Declarative Lookup Rollup Summaries Tool package (dlrs)
 **/
@IsTest
private class dlrs_Customer_SREC_ContractTest
{
    private static testmethod void testTrigger()
    {
        // Force the dlrs_Customer_SREC_ContractTrigger to be invoked, fails the test if org config or other Apex code prevents this.
        dlrs.RollupService.testHandler(new Customer_SREC_Contract__c());
    }
}