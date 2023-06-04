<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_custom_line_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A paginated call to get a list of all custom line items (FFLIs) for the given billing period

### Description

A paginated call to get a list of all custom line items (FFLIs) for the
given billing period. If you don't provide a billing period, the current
billing period is used.

### Usage

    billingconductor_list_custom_line_items(BillingPeriod, MaxResults,
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
id="billingconductor_list_custom_line_items_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The preferred billing period to get custom line items
(FFLIs).</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_custom_line_items_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of billing groups to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_custom_line_items_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent calls to get
custom line items (FFLIs).</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_custom_line_items_:_Filters">Filters</code></td>
<td><p>A <code>ListCustomLineItemsFilter</code> that specifies the
custom line item names and/or billing group Amazon Resource Names (ARNs)
to retrieve FFLI information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomLineItems = list(
        list(
          Arn = "string",
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
          AssociationSize = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_line_items(
      BillingPeriod = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        Names = list(
          "string"
        ),
        BillingGroups = list(
          "string"
        ),
        Arns = list(
          "string"
        )
      )
    )
