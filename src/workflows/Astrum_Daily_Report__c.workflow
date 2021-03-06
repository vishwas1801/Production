<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Astrum_Daily_Report_Email</fullName>
        <ccEmails>leadershipteam@directenergysolar.com</ccEmails>
        <ccEmails>OperationsManagement@directenergysolar.com</ccEmails>
        <description>Astrum Daily Report Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>chris.hann@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>daniel.clark@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>david.shaw@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>gregory.moore@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mark.maffitt@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rohit.jain@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sophie.lockerby@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>steven.zilligen@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>thom.smith@directenergysolar.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>info@directenergysolar.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Astrum_Daily_Report</template>
    </alerts>
    <rules>
        <fullName>Email Astrum Daily Report</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Astrum_Daily_Report__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Astrum_Daily_Report__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Actual</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Astrum_Daily_Report_Email</name>
                <type>Alert</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
