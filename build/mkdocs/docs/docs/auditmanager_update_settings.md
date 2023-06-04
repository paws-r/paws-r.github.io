<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_update_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates Audit Manager settings for the current account

### Description

Updates Audit Manager settings for the current account.

### Usage

    auditmanager_update_settings(snsTopic,
      defaultAssessmentReportsDestination, defaultProcessOwners, kmsKey,
      evidenceFinderEnabled, deregistrationPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_update_settings_:_snsTopic">snsTopic</code></td>
<td><p>The Amazon Simple Notification Service (Amazon SNS) topic that
Audit Manager sends notifications to.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_settings_:_defaultAssessmentReportsDestination">defaultAssessmentReportsDestination</code></td>
<td><p>The default storage destination for assessment reports.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_settings_:_defaultProcessOwners">defaultProcessOwners</code></td>
<td><p>A list of the default audit owners.</p></td>
</tr>
<tr class="even">
<td><code id="auditmanager_update_settings_:_kmsKey">kmsKey</code></td>
<td><p>The KMS key details.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_settings_:_evidenceFinderEnabled">evidenceFinderEnabled</code></td>
<td><p>Specifies whether the evidence finder feature is enabled. Change
this attribute to enable or disable evidence finder.</p>
<p>When you use this attribute to disable evidence finder, Audit Manager
deletes the event data store that’s used to query your evidence data. As
a result, you can’t re-enable evidence finder and use the feature again.
Your only alternative is to <a
href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeregisterAccount.html">deregister</a>
and then <a
href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_RegisterAccount.html">re-register</a>
Audit Manager.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_settings_:_deregistrationPolicy">deregistrationPolicy</code></td>
<td><p>The deregistration policy for your Audit Manager data. You can
use this attribute to determine how your data is handled when you
deregister Audit Manager.</p></td>
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

    svc$update_settings(
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
      evidenceFinderEnabled = TRUE|FALSE,
      deregistrationPolicy = list(
        deleteResources = "ALL"|"DEFAULT"
      )
    )
