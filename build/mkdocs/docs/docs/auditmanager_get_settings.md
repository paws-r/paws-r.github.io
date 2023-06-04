<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the settings for the specified Amazon Web Services account

### Description

Returns the settings for the specified Amazon Web Services account.

### Usage

    auditmanager_get_settings(attribute)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_settings_:_attribute">attribute</code></td>
<td><p>[required] The list of setting attribute enum values.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      settings = list(
        isAwsOrgEnabled = TRUE|FALSE,
        snsTopic = "string",
        defaultAssessmentReportsDestination = list(
          destinationType = "S3",
          destination = "string"
        ),
        defaultProcessOwners = list(
          list(
            roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
            roleArn = "string"
          )
        ),
        kmsKey = "string",
        evidenceFinderEnablement = list(
          eventDataStoreArn = "string",
          enablementStatus = "ENABLED"|"DISABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS",
          backfillStatus = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETED",
          error = "string"
        ),
        deregistrationPolicy = list(
          deleteResources = "ALL"|"DEFAULT"
        )
      )
    )

### Request syntax

    svc$get_settings(
      attribute = "ALL"|"IS_AWS_ORG_ENABLED"|"SNS_TOPIC"|"DEFAULT_ASSESSMENT_REPORTS_DESTINATION"|"DEFAULT_PROCESS_OWNERS"|"EVIDENCE_FINDER_ENABLEMENT"|"DEREGISTRATION_POLICY"
    )
