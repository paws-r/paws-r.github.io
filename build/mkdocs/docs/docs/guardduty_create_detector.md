<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_create_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a single Amazon GuardDuty detector

### Description

Creates a single Amazon GuardDuty detector. A detector is a resource
that represents the GuardDuty service. To start using GuardDuty, you
must create a detector in each Region where you enable the service. You
can have only one detector per account per Region. All data sources are
enabled in a new detector by default.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see [Regions and
endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).

### Usage

    guardduty_create_detector(Enable, ClientToken,
      FindingPublishingFrequency, DataSources, Tags, Features)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="guardduty_create_detector_:_Enable">Enable</code></td>
<td><p>[required] A Boolean value that specifies whether the detector is
to be enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_detector_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token for the create request.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_create_detector_:_FindingPublishingFrequency">FindingPublishingFrequency</code></td>
<td><p>A value that specifies how frequently updated findings are
exported.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_detector_:_DataSources">DataSources</code></td>
<td><p>Describes which data sources will be enabled for the
detector.</p>
<p>There might be regional differences because some data sources might
not be available in all the Amazon Web Services Regions where GuardDuty
is presently supported. For more information, see <a
href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions
and endpoints</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_create_detector_:_Tags">Tags</code></td>
<td><p>The tags to be added to a new detector resource.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_create_detector_:_Features">Features</code></td>
<td><p>A list of features that will be configured for the
detector.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DetectorId = "string",
      UnprocessedDataSources = list(
        MalwareProtection = list(
          ScanEc2InstanceWithFindings = list(
            EbsVolumes = list(
              Status = "ENABLED"|"DISABLED",
              Reason = "string"
            )
          ),
          ServiceRole = "string"
        )
      )
    )

### Request syntax

    svc$create_detector(
      Enable = TRUE|FALSE,
      ClientToken = "string",
      FindingPublishingFrequency = "FIFTEEN_MINUTES"|"ONE_HOUR"|"SIX_HOURS",
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
      Tags = list(
        "string"
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
