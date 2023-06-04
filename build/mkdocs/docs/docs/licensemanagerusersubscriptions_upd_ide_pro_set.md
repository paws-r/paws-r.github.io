<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_update_identity_provider_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates additional product configuration settings for the registered identity provider

### Description

Updates additional product configuration settings for the registered
identity provider.

### Usage

    licensemanagerusersubscriptions_update_identity_provider_settings(
      IdentityProvider, Product, UpdateSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_update_identity_provider_settings_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_update_identity_provider_settings_:_Product">Product</code></td>
<td><p>[required] The name of the user-based subscription
product.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_update_identity_provider_settings_:_UpdateSettings">UpdateSettings</code></td>
<td><p>[required] Updates the registered identity provider’s product
related configuration settings. You can update any combination of
settings in a single operation such as the:</p>
<ul>
<li><p>Subnets which you want to add to provision VPC
endpoints.</p></li>
<li><p>Subnets which you want to remove the VPC endpoints from.</p></li>
<li><p>Security group ID which permits traffic to the VPC
endpoints.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityProviderSummary = list(
        FailureMessage = "string",
        IdentityProvider = list(
          ActiveDirectoryIdentityProvider = list(
            DirectoryId = "string"
          )
        ),
        Product = "string",
        Settings = list(
          SecurityGroupId = "string",
          Subnets = list(
            "string"
          )
        ),
        Status = "string"
      )
    )

### Request syntax

    svc$update_identity_provider_settings(
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      Product = "string",
      UpdateSettings = list(
        AddSubnets = list(
          "string"
        ),
        RemoveSubnets = list(
          "string"
        ),
        SecurityGroupId = "string"
      )
    )
