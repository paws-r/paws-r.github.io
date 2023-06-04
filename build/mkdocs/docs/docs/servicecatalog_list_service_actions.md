<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_service_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all self-service actions

### Description

Lists all self-service actions.

### Usage

    servicecatalog_list_service_actions(AcceptLanguage, PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_service_actions_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_service_actions_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_service_actions_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceActionSummaries = list(
        list(
          Id = "string",
          Name = "string",
          Description = "string",
          DefinitionType = "SSM_AUTOMATION"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_service_actions(
      AcceptLanguage = "string",
      PageSize = 123,
      PageToken = "string"
    )
