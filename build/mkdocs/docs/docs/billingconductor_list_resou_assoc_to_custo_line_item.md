<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_resources_associated_to_custom_line_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the resources that are associated to a custom line item

### Description

List the resources that are associated to a custom line item.

### Usage

    billingconductor_list_resources_associated_to_custom_line_item(
      BillingPeriod, Arn, MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_resources_associated_to_custom_line_item_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The billing period for which the resource associations will be
listed.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_resources_associated_to_custom_line_item_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the custom line item for which the resource
associations will be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_resources_associated_to_custom_line_item_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) The maximum number of resource associations to be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_resources_associated_to_custom_line_item_:_NextToken">NextToken</code></td>
<td><p>(Optional) The pagination token that's returned by a previous
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_resources_associated_to_custom_line_item_:_Filters">Filters</code></td>
<td><p>(Optional) A
<code>ListResourcesAssociatedToCustomLineItemFilter</code> that can
specify the types of resources that should be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      AssociatedResources = list(
        list(
          Arn = "string",
          Relationship = "PARENT"|"CHILD",
          EndBillingPeriod = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resources_associated_to_custom_line_item(
      BillingPeriod = "string",
      Arn = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        Relationship = "PARENT"|"CHILD"
      )
    )
