<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_record_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the specified requests or all performed requests

### Description

Lists the specified requests or all performed requests.

### Usage

    servicecatalog_list_record_history(AcceptLanguage, AccessLevelFilter,
      SearchFilter, PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_record_history_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_record_history_:_AccessLevelFilter">AccessLevelFilter</code></td>
<td><p>The access level to use to obtain results. The default is
<code>User</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_record_history_:_SearchFilter">SearchFilter</code></td>
<td><p>The search filter to scope the results.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_record_history_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_record_history_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecordDetails = list(
        list(
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
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_record_history(
      AcceptLanguage = "string",
      AccessLevelFilter = list(
        Key = "Account"|"Role"|"User",
        Value = "string"
      ),
      SearchFilter = list(
        Key = "string",
        Value = "string"
      ),
      PageSize = 123,
      PageToken = "string"
    )
