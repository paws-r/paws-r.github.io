<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_stop_product_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a product subscription for a user with the specified identity provider

### Description

Stops a product subscription for a user with the specified identity
provider.

### Usage

    licensemanagerusersubscriptions_stop_product_subscription(Domain,
      IdentityProvider, Product, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_stop_product_subscription_:_Domain">Domain</code></td>
<td><p>The domain name of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_stop_product_subscription_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_stop_product_subscription_:_Product">Product</code></td>
<td><p>[required] The name of the user-based subscription
product.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_stop_product_subscription_:_Username">Username</code></td>
<td><p>[required] The user name from the identity provider for the
user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductUserSummary = list(
        Domain = "string",
        IdentityProvider = list(
          ActiveDirectoryIdentityProvider = list(
            DirectoryId = "string"
          )
        ),
        Product = "string",
        Status = "string",
        StatusMessage = "string",
        SubscriptionEndDate = "string",
        SubscriptionStartDate = "string",
        Username = "string"
      )
    )

### Request syntax

    svc$stop_product_subscription(
      Domain = "string",
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      Product = "string",
      Username = "string"
    )
