<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_search_provisioned_products</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the provisioned products that meet the specified criteria

### Description

Gets information about the provisioned products that meet the specified
criteria.

### Usage

    servicecatalog_search_provisioned_products(AcceptLanguage,
      AccessLevelFilter, Filters, SortBy, SortOrder, PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_search_provisioned_products_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_provisioned_products_:_AccessLevelFilter">AccessLevelFilter</code></td>
<td><p>The access level to use to obtain results. The default is
<code>User</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_provisioned_products_:_Filters">Filters</code></td>
<td><p>The search filters.</p>
<p>When the key is <code>SearchQuery</code>, the searchable fields are
<code>arn</code>, <code>createdTime</code>, <code>id</code>,
<code>lastRecordId</code>, <code>idempotencyToken</code>,
<code>name</code>, <code>physicalId</code>, <code>productId</code>,
<code>provisioningArtifact</code>, <code>type</code>,
<code>status</code>, <code>tags</code>, <code>userArn</code>,
<code>userArnSession</code>, <code>lastProvisioningRecordId</code>,
<code>lastSuccessfulProvisioningRecordId</code>,
<code>productName</code>, and <code>provisioningArtifactName</code>.</p>
<p>Example: <code
style="white-space: pre;">⁠"SearchQuery":["status:AVAILABLE"]⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_provisioned_products_:_SortBy">SortBy</code></td>
<td><p>The sort field. If no value is specified, the results are not
sorted. The valid values are <code>arn</code>, <code>id</code>,
<code>name</code>, and <code>lastRecordId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_provisioned_products_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. If no value is specified, the results are not
sorted.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_search_provisioned_products_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_search_provisioned_products_:_PageToken">PageToken</code></td>
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
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          PhysicalId = "string",
          ProductId = "string",
          ProductName = "string",
          ProvisioningArtifactId = "string",
          ProvisioningArtifactName = "string",
          UserArn = "string",
          UserArnSession = "string"
        )
      ),
      TotalResultsCount = 123,
      NextPageToken = "string"
    )

### Request syntax

    svc$search_provisioned_products(
      AcceptLanguage = "string",
      AccessLevelFilter = list(
        Key = "Account"|"Role"|"User",
        Value = "string"
      ),
      Filters = list(
        list(
          "string"
        )
      ),
      SortBy = "string",
      SortOrder = "ASCENDING"|"DESCENDING",
      PageSize = 123,
      PageToken = "string"
    )
