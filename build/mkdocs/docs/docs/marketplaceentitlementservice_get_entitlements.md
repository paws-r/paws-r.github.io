<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplaceentitlementservice_get_entitlements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## GetEntitlements retrieves entitlement values for a given product

### Description

GetEntitlements retrieves entitlement values for a given product. The
results can be filtered based on customer identifier or product
dimensions.

### Usage

    marketplaceentitlementservice_get_entitlements(ProductCode, Filter,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplaceentitlementservice_get_entitlements_:_ProductCode">ProductCode</code></td>
<td><p>[required] Product code is used to uniquely identify a product in
AWS Marketplace. The product code will be provided by AWS Marketplace
when the product listing is created.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplaceentitlementservice_get_entitlements_:_Filter">Filter</code></td>
<td><p>Filter is used to return entitlements for a specific customer or
for a specific dimension. Filters are described as keys mapped to a
lists of values. Filtered requests are <em>unioned</em> for each value
in the value list, and then <em>intersected</em> for each filter
key.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplaceentitlementservice_get_entitlements_:_NextToken">NextToken</code></td>
<td><p>For paginated calls to GetEntitlements, pass the NextToken from
the previous GetEntitlementsResult.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplaceentitlementservice_get_entitlements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to retrieve from the GetEntitlements
operation. For pagination, use the NextToken field in subsequent calls
to GetEntitlements.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entitlements = list(
        list(
          ProductCode = "string",
          Dimension = "string",
          CustomerIdentifier = "string",
          Value = list(
            IntegerValue = 123,
            DoubleValue = 123.0,
            BooleanValue = TRUE|FALSE,
            StringValue = "string"
          ),
          ExpirationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_entitlements(
      ProductCode = "string",
      Filter = list(
        list(
          "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
