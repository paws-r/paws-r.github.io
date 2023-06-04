<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_register_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an identity provider for user-based subscriptions

### Description

Registers an identity provider for user-based subscriptions.

### Usage

    licensemanagerusersubscriptions_register_identity_provider(
      IdentityProvider, Product, Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_register_identity_provider_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_register_identity_provider_:_Product">Product</code></td>
<td><p>[required] The name of the user-based subscription
product.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_register_identity_provider_:_Settings">Settings</code></td>
<td><p>The registered identity provider’s product related configuration
settings such as the subnets to provision VPC endpoints.</p></td>
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

    svc$register_identity_provider(
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
      )
    )
