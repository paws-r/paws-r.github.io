<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_deregister_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the identity provider from providing user-based subscriptions

### Description

Deregisters the identity provider from providing user-based
subscriptions.

### Usage

    licensemanagerusersubscriptions_deregister_identity_provider(
      IdentityProvider, Product)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_deregister_identity_provider_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_deregister_identity_provider_:_Product">Product</code></td>
<td><p>[required] The name of the user-based subscription
product.</p></td>
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

    svc$deregister_identity_provider(
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      Product = "string"
    )
