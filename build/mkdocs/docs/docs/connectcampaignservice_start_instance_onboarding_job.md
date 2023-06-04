<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_start_instance_onboarding_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Onboard the specific Amazon Connect instance to Connect Campaigns

### Description

Onboard the specific Amazon Connect instance to Connect Campaigns.

### Usage

    connectcampaignservice_start_instance_onboarding_job(connectInstanceId,
      encryptionConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_start_instance_onboarding_job_:_connectInstanceId">connectInstanceId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="connectcampaignservice_start_instance_onboarding_job_:_encryptionConfig">encryptionConfig</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectInstanceOnboardingJobStatus = list(
        connectInstanceId = "string",
        failureCode = "EVENT_BRIDGE_ACCESS_DENIED"|"EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED"|"IAM_ACCESS_DENIED"|"KMS_ACCESS_DENIED"|"KMS_KEY_NOT_FOUND"|"INTERNAL_FAILURE",
        status = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"
      )
    )

### Request syntax

    svc$start_instance_onboarding_job(
      connectInstanceId = "string",
      encryptionConfig = list(
        enabled = TRUE|FALSE,
        encryptionType = "KMS",
        keyArn = "string"
      )
    )
