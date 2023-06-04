<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_update_service_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates License Manager settings for the current Region

### Description

Updates License Manager settings for the current Region.

### Usage

    licensemanager_update_service_settings(S3BucketArn, SnsTopicArn,
      OrganizationConfiguration, EnableCrossAccountsDiscovery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_update_service_settings_:_S3BucketArn">S3BucketArn</code></td>
<td><p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the
License Manager information is stored.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_service_settings_:_SnsTopicArn">SnsTopicArn</code></td>
<td><p>Amazon Resource Name (ARN) of the Amazon SNS topic used for
License Manager alerts.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_service_settings_:_OrganizationConfiguration">OrganizationConfiguration</code></td>
<td><p>Enables integration with Organizations for cross-account
discovery.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_service_settings_:_EnableCrossAccountsDiscovery">EnableCrossAccountsDiscovery</code></td>
<td><p>Activates cross-account discovery.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_service_settings(
      S3BucketArn = "string",
      SnsTopicArn = "string",
      OrganizationConfiguration = list(
        EnableIntegration = TRUE|FALSE
      ),
      EnableCrossAccountsDiscovery = TRUE|FALSE
    )
