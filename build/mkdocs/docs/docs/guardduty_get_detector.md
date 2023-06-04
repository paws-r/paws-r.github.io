<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an Amazon GuardDuty detector specified by the detectorId

### Description

Retrieves an Amazon GuardDuty detector specified by the detectorId.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see [Regions and
endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).

### Usage

    guardduty_get_detector(DetectorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_detector_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that you want to
get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreatedAt = "string",
      FindingPublishingFrequency = "FIFTEEN_MINUTES"|"ONE_HOUR"|"SIX_HOURS",
      ServiceRole = "string",
      Status = "ENABLED"|"DISABLED",
      UpdatedAt = "string",
      DataSources = list(
        CloudTrail = list(
          Status = "ENABLED"|"DISABLED"
        ),
        DNSLogs = list(
          Status = "ENABLED"|"DISABLED"
        ),
        FlowLogs = list(
          Status = "ENABLED"|"DISABLED"
        ),
        S3Logs = list(
          Status = "ENABLED"|"DISABLED"
        ),
        Kubernetes = list(
          AuditLogs = list(
            Status = "ENABLED"|"DISABLED"
          )
        ),
        MalwareProtection = list(
          ScanEc2InstanceWithFindings = list(
            EbsVolumes = list(
              Status = "ENABLED"|"DISABLED",
              Reason = "string"
            )
          ),
          ServiceRole = "string"
        )
      ),
      Tags = list(
        "string"
      ),
      Features = list(
        list(
          Name = "FLOW_LOGS"|"CLOUD_TRAIL"|"DNS_LOGS"|"S3_DATA_EVENTS"|"EKS_AUDIT_LOGS"|"EBS_MALWARE_PROTECTION"|"RDS_LOGIN_EVENTS"|"EKS_RUNTIME_MONITORING"|"LAMBDA_NETWORK_LOGS",
          Status = "ENABLED"|"DISABLED",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          AdditionalConfiguration = list(
            list(
              Name = "EKS_ADDON_MANAGEMENT",
              Status = "ENABLED"|"DISABLED",
              UpdatedAt = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_detector(
      DetectorId = "string"
    )
