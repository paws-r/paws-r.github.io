<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_start_product_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a product subscription for a user with the specified identity provider

### Description

Starts a product subscription for a user with the specified identity
provider.

Your estimated bill for charges on the number of users and related costs
will take 48 hours to appear for billing periods that haven't closed
(marked as **Pending** billing status) in Amazon Web Services Billing.
For more information, see [Viewing your monthly
charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
in the *Amazon Web Services Billing User Guide*.

### Usage

    licensemanagerusersubscriptions_start_product_subscription(Domain,
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
id="licensemanagerusersubscriptions_start_product_subscription_:_Domain">Domain</code></td>
<td><p>The domain name of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_start_product_subscription_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_start_product_subscription_:_Product">Product</code></td>
<td><p>[required] The name of the user-based subscription
product.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_start_product_subscription_:_Username">Username</code></td>
<td><p>[required] The user name from the identity provider of the
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

    svc$start_product_subscription(
      Domain = "string",
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      Product = "string",
      Username = "string"
    )
