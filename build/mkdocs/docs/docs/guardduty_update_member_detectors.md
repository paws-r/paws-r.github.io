<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_member_detectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Contains information on member accounts to be updated

### Description

Contains information on member accounts to be updated.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see [Regions and
endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).

### Usage

    guardduty_update_member_detectors(DetectorId, AccountIds, DataSources,
      Features)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_member_detectors_:_DetectorId">DetectorId</code></td>
<td><p>[required] The detector ID of the administrator account.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_member_detectors_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of member account IDs to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_member_detectors_:_DataSources">DataSources</code></td>
<td><p>Describes which data sources will be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_member_detectors_:_Features">Features</code></td>
<td><p>A list of features that will be updated for the specified member
accounts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Result = "string"
        )
      )
    )

### Request syntax

    svc$update_member_detectors(
      DetectorId = "string",
      AccountIds = list(
        "string"
      ),
      DataSources = list(
        S3Logs = list(
          Enable = TRUE|FALSE
        ),
        Kubernetes = list(
          AuditLogs = list(
            Enable = TRUE|FALSE
          )
        ),
        MalwareProtection = list(
          ScanEc2InstanceWithFindings = list(
            EbsVolumes = TRUE|FALSE
          )
        )
      ),
      Features = list(
        list(
          Name = "S3_DATA_EVENTS"|"EKS_AUDIT_LOGS"|"EBS_MALWARE_PROTECTION"|"RDS_LOGIN_EVENTS"|"EKS_RUNTIME_MONITORING"|"LAMBDA_NETWORK_LOGS",
          Status = "ENABLED"|"DISABLED",
          AdditionalConfiguration = list(
            list(
              Name = "EKS_ADDON_MANAGEMENT",
              Status = "ENABLED"|"DISABLED"
            )
          )
        )
      )
    )
