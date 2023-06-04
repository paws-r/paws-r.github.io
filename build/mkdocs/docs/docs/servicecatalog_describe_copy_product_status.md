<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_copy_product_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the status of the specified copy product operation

### Description

Gets the status of the specified copy product operation.

### Usage

    servicecatalog_describe_copy_product_status(AcceptLanguage,
      CopyProductToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_copy_product_status_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_copy_product_status_:_CopyProductToken">CopyProductToken</code></td>
<td><p>[required] The token for the copy product operation. This token
is returned by <code>copy_product</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CopyProductStatus = "SUCCEEDED"|"IN_PROGRESS"|"FAILED",
      TargetProductId = "string",
      StatusDetail = "string"
    )

### Request syntax

    svc$describe_copy_product_status(
      AcceptLanguage = "string",
      CopyProductToken = "string"
    )
