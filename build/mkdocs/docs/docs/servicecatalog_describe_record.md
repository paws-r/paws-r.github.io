<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified request operation

### Description

Gets information about the specified request operation.

Use this operation after calling a request operation (for example,
`provision_product`, `terminate_provisioned_product`, or
`update_provisioned_product`).

If a provisioned product was transferred to a new owner using
`update_provisioned_product_properties`, the new owner will be able to
describe all past records for that product. The previous owner will no
longer be able to describe the records, but will be able to use
`list_record_history` to see the product's history from when he was the
owner.

### Usage

    servicecatalog_describe_record(AcceptLanguage, Id, PageToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_record_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_describe_record_:_Id">Id</code></td>
<td><p>[required] The record identifier of the provisioned product. This
identifier is returned by the request operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_record_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_record_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecordDetail = list(
        RecordId = "string",
        ProvisionedProductName = "string",
        Status = "CREATED"|"IN_PROGRESS"|"IN_PROGRESS_IN_ERROR"|"SUCCEEDED"|"FAILED",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        UpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        ProvisionedProductType = "string",
        RecordType = "string",
        ProvisionedProductId = "string",
        ProductId = "string",
        ProvisioningArtifactId = "string",
        PathId = "string",
        RecordErrors = list(
          list(
            Code = "string",
            Description = "string"
          )
        ),
        RecordTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        LaunchRoleArn = "string"
      ),
      RecordOutputs = list(
        list(
          OutputKey = "string",
          OutputValue = "string",
          Description = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$describe_record(
      AcceptLanguage = "string",
      Id = "string",
      PageToken = "string",
      PageSize = 123
    )
