<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_stack_instances_for_provisioned_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summary information about stack instances that are associated with the specified CFN\_STACKSET type provisioned product

### Description

Returns summary information about stack instances that are associated
with the specified `CFN_STACKSET` type provisioned product. You can
filter for stack instances that are associated with a specific Amazon
Web Services account name or Region.

### Usage

    servicecatalog_list_stack_instances_for_provisioned_product(
      AcceptLanguage, ProvisionedProductId, PageToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_stack_instances_for_provisioned_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_stack_instances_for_provisioned_product_:_ProvisionedProductId">ProvisionedProductId</code></td>
<td><p>[required] The identifier of the provisioned product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_stack_instances_for_provisioned_product_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_stack_instances_for_provisioned_product_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackInstances = list(
        list(
          Account = "string",
          Region = "string",
          StackInstanceStatus = "CURRENT"|"OUTDATED"|"INOPERABLE"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_stack_instances_for_provisioned_product(
      AcceptLanguage = "string",
      ProvisionedProductId = "string",
      PageToken = "string",
      PageSize = 123
    )
