<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectcampaignservice_get_instance_onboarding_job_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the specific instance onboarding job status

### Description

Get the specific instance onboarding job status.

### Usage

    connectcampaignservice_get_instance_onboarding_job_status(
      connectInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectcampaignservice_get_instance_onboarding_job_status_:_connectInstanceId">connectInstanceId</code></td>
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

    svc$get_instance_onboarding_job_status(
      connectInstanceId = "string"
    )
