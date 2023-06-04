<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_list_product_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the user-based subscription products available from an identity provider

### Description

Lists the user-based subscription products available from an identity
provider.

### Usage

    licensemanagerusersubscriptions_list_product_subscriptions(Filters,
      IdentityProvider, MaxResults, NextToken, Product)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_product_subscriptions_:_Filters">Filters</code></td>
<td><p>An array of structures that you can use to filter the results to
those that match one or more sets of key-value pairs that you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_list_product_subscriptions_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_product_subscriptions_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_list_product_subscriptions_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_product_subscriptions_:_Product">Product</code></td>
<td><p>[required] The name of the user-based subscription
product.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ProductUserSummaries = list(
        list(
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
    )

### Request syntax

    svc$list_product_subscriptions(
      Filters = list(
        list(
          Attribute = "string",
          Operation = "string",
          Value = "string"
        )
      ),
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      Product = "string"
    )
