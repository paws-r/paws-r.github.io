<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures the delegated administrator account with the provided values

### Description

Configures the delegated administrator account with the provided values.
You must provide the value for either `autoEnableOrganizationMembers` or
`autoEnable`.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see [Regions and
endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).

### Usage

    guardduty_update_organization_configuration(DetectorId, AutoEnable,
      DataSources, Features, AutoEnableOrganizationMembers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_organization_configuration_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector that configures the delegated
administrator.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_organization_configuration_:_AutoEnable">AutoEnable</code></td>
<td><p>Indicates whether to automatically enable member accounts in the
organization.</p>
<p>Even though this is still supported, we recommend using
<code>AutoEnableOrganizationMembers</code> to achieve the similar
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_organization_configuration_:_DataSources">DataSources</code></td>
<td><p>Describes which data sources will be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_organization_configuration_:_Features">Features</code></td>
<td><p>A list of features that will be configured for the
organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_organization_configuration_:_AutoEnableOrganizationMembers">AutoEnableOrganizationMembers</code></td>
<td><p>Indicates the auto-enablement configuration of GuardDuty for the
member accounts in the organization.</p>
<ul>
<li><p><code>NEW</code>: Indicates that when a new account joins the
organization, they will have GuardDuty enabled automatically.</p></li>
<li><p><code>ALL</code>: Indicates that all accounts in the Amazon Web
Services Organization have GuardDuty enabled automatically. This
includes <code>NEW</code> accounts that join the organization and
accounts that may have been suspended or removed from the organization
in GuardDuty.</p></li>
<li><p><code>NONE</code>: Indicates that GuardDuty will not be
automatically enabled for any accounts in the organization. GuardDuty
must be managed for each account individually by the
administrator.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_organization_configuration(
      DetectorId = "string",
      AutoEnable = TRUE|FALSE,
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
      AutoEnableOrganizationMembers = "NEW"|"ALL"|"NONE"
    )
