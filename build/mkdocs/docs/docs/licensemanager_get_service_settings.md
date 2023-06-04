<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_service_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the License Manager settings for the current Region

### Description

Gets the License Manager settings for the current Region.

### Usage

    licensemanager_get_service_settings()

### Value

A list with the following syntax:

    list(
      S3BucketArn = "string",
      SnsTopicArn = "string",
      OrganizationConfiguration = list(
        EnableIntegration = TRUE|FALSE
      ),
      EnableCrossAccountsDiscovery = TRUE|FALSE,
      LicenseManagerResourceShareArn = "string"
    )

### Request syntax

    svc$get_service_settings()
