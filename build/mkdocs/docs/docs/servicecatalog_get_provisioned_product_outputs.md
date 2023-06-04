<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_get_provisioned_product_outputs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API takes either a ProvisonedProductId or a ProvisionedProductName, along with a list of one or more output keys, and responds with the key/value pairs of those outputs

### Description

This API takes either a `ProvisonedProductId` or a
`ProvisionedProductName`, along with a list of one or more output keys,
and responds with the key/value pairs of those outputs.

### Usage

    servicecatalog_get_provisioned_product_outputs(AcceptLanguage,
      ProvisionedProductId, ProvisionedProductName, OutputKeys, PageSize,
      PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_get_provisioned_product_outputs_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_get_provisioned_product_outputs_:_ProvisionedProductId">ProvisionedProductId</code></td>
<td><p>The identifier of the provisioned product that you want the
outputs from.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_get_provisioned_product_outputs_:_ProvisionedProductName">ProvisionedProductName</code></td>
<td><p>The name of the provisioned product that you want the outputs
from.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_get_provisioned_product_outputs_:_OutputKeys">OutputKeys</code></td>
<td><p>The list of keys that the API should return with their values. If
none are provided, the API will return all outputs of the provisioned
product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_get_provisioned_product_outputs_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_get_provisioned_product_outputs_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Outputs = list(
        list(
          OutputKey = "string",
          OutputValue = "string",
          Description = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_provisioned_product_outputs(
      AcceptLanguage = "string",
      ProvisionedProductId = "string",
      ProvisionedProductName = "string",
      OutputKeys = list(
        "string"
      ),
      PageSize = 123,
      PageToken = "string"
    )
