<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_describe_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the account selected as the delegated administrator for GuardDuty

### Description

Returns information about the account selected as the delegated
administrator for GuardDuty.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see [Regions and
endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).

### Usage

    guardduty_describe_organization_configuration(DetectorId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_describe_organization_configuration_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector to retrieve information about
the delegated administrator from.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_describe_organization_configuration_:_MaxResults">MaxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items that you want in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_describe_organization_configuration_:_NextToken">NextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the list action. For
subsequent calls to the action, fill <code>nextToken</code> in the
request with the value of <code>NextToken</code> from the previous
response to continue listing data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoEnable = TRUE|FALSE,
      MemberAccountLimitReached = TRUE|FALSE,
      DataSources = list(
        S3Logs = list(
          AutoEnable = TRUE|FALSE
        ),
        Kubernetes = list(
          AuditLogs = list(
            AutoEnable = TRUE|FALSE
          )
        ),
        MalwareProtection = list(
          ScanEc2InstanceWithFindings = list(
            EbsVolumes = list(
              AutoEnable = TRUE|FALSE
            )
          )
        )
      ),
      Features = list(
        list(
          Name = "S3_DATA_EVENTS"|"EKS_AUDIT_LOGS"|"EBS_MALWARE_PROTECTION"|"RDS_LOGIN_EVENTS"|"EKS_RUNTIME_MONITORING"|"LAMBDA_NETWORK_LOGS",
          AutoEnable = "NEW"|"NONE",
          AdditionalConfiguration = list(
            list(
              Name = "EKS_ADDON_MANAGEMENT",
              AutoEnable = "NEW"|"NONE"
            )
          )
        )
      ),
      NextToken = "string",
      AutoEnableOrganizationMembers = "NEW"|"ALL"|"NONE"
    )

### Request syntax

    svc$describe_organization_configuration(
      DetectorId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
