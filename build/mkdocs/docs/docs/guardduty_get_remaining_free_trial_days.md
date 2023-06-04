<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_remaining_free_trial_days</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the number of days left for each data source used in the free trial period

### Description

Provides the number of days left for each data source used in the free
trial period.

### Usage

    guardduty_get_remaining_free_trial_days(DetectorId, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_remaining_free_trial_days_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector of the GuardDuty member
account.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_get_remaining_free_trial_days_:_AccountIds">AccountIds</code></td>
<td><p>A list of account identifiers of the GuardDuty member
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Accounts = list(
        list(
          AccountId = "string",
          DataSources = list(
            CloudTrail = list(
              FreeTrialDaysRemaining = 123
            ),
            DnsLogs = list(
              FreeTrialDaysRemaining = 123
            ),
            FlowLogs = list(
              FreeTrialDaysRemaining = 123
            ),
            S3Logs = list(
              FreeTrialDaysRemaining = 123
            ),
            Kubernetes = list(
              AuditLogs = list(
                FreeTrialDaysRemaining = 123
              )
            ),
            MalwareProtection = list(
              ScanEc2InstanceWithFindings = list(
                FreeTrialDaysRemaining = 123
              )
            )
          ),
          Features = list(
            list(
              Name = "FLOW_LOGS"|"CLOUD_TRAIL"|"DNS_LOGS"|"S3_DATA_EVENTS"|"EKS_AUDIT_LOGS"|"EBS_MALWARE_PROTECTION"|"RDS_LOGIN_EVENTS"|"EKS_RUNTIME_MONITORING"|"LAMBDA_NETWORK_LOGS",
              FreeTrialDaysRemaining = 123
            )
          )
        )
      ),
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Result = "string"
        )
      )
    )

### Request syntax

    svc$get_remaining_free_trial_days(
      DetectorId = "string",
      AccountIds = list(
        "string"
      )
    )
