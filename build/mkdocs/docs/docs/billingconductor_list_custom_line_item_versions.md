<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_custom_line_item_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A paginated call to get a list of all custom line item versions

### Description

A paginated call to get a list of all custom line item versions.

### Usage

    billingconductor_list_custom_line_item_versions(Arn, MaxResults,
      NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_custom_line_item_versions_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the custom line
item.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_custom_line_item_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of custom line item versions to
retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_custom_line_item_versions_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent calls to retrieve
custom line item versions.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_custom_line_item_versions_:_Filters">Filters</code></td>
<td><p>A <code>ListCustomLineItemVersionsFilter</code> that specifies
the billing period range in which the custom line item versions are
applied.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomLineItemVersions = list(
        list(
          Name = "string",
          ChargeDetails = list(
            Flat = list(
              ChargeValue = 123.0
            ),
            Percentage = list(
              PercentageValue = 123.0
            ),
            Type = "CREDIT"|"FEE"
          ),
          CurrencyCode = "USD"|"CNY",
          Description = "string",
          ProductCode = "string",
          BillingGroupArn = "string",
          CreationTime = 123,
          LastModifiedTime = 123,
          AssociationSize = 123,
          StartBillingPeriod = "string",
          EndBillingPeriod = "string",
          Arn = "string",
          StartTime = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_line_item_versions(
      Arn = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        BillingPeriodRange = list(
          StartBillingPeriod = "string",
          EndBillingPeriod = "string"
        )
      )
    )
