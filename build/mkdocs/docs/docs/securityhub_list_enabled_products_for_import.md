<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_enabled_products_for_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub

### Description

Lists all findings-generating solutions (products) that you are
subscribed to receive findings from in Security Hub.

### Usage

    securityhub_list_enabled_products_for_import(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_list_enabled_products_for_import_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>list_enabled_products_for_import</code> operation, set the
value of this parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_enabled_products_for_import_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductSubscriptions = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_enabled_products_for_import(
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example returns a list of subscription Amazon Resource
    # Names (ARNs) for the product integrations that you have currently
    # enabled in Security Hub.
    svc$list_enabled_products_for_import()

    ## End(Not run)
