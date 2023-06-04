<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_scan_provisioned_products</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the provisioned products that are available (not terminated)

### Description

Lists the provisioned products that are available (not terminated).

To use additional filtering, see `search_provisioned_products`.

### Usage

    servicecatalog_scan_provisioned_products(AcceptLanguage,
      AccessLevelFilter, PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_scan_provisioned_products_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_scan_provisioned_products_:_AccessLevelFilter">AccessLevelFilter</code></td>
<td><p>The access level to use to obtain results. The default is
<code>User</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_scan_provisioned_products_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_scan_provisioned_products_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisionedProducts = list(
        list(
          Name = "string",
          Arn = "string",
          Type = "string",
          Id = "string",
          Status = "AVAILABLE"|"UNDER_CHANGE"|"TAINTED"|"ERROR"|"PLAN_IN_PROGRESS",
          StatusMessage = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          IdempotencyToken = "string",
          LastRecordId = "string",
          LastProvisioningRecordId = "string",
          LastSuccessfulProvisioningRecordId = "string",
          ProductId = "string",
          ProvisioningArtifactId = "string",
          LaunchRoleArn = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$scan_provisioned_products(
      AcceptLanguage = "string",
      AccessLevelFilter = list(
        Key = "Account"|"Role"|"User",
        Value = "string"
      ),
      PageSize = 123,
      PageToken = "string"
    )
