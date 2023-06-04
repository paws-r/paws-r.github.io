<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_template_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the aliases of a template

### Description

Lists all the aliases of a template.

### Usage

    quicksight_list_template_aliases(AwsAccountId, TemplateId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_template_aliases_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template aliases that you're listing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_template_aliases_:_TemplateId">TemplateId</code></td>
<td><p>[required] The ID for the template.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_template_aliases_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_template_aliases_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateAliasList = list(
        list(
          AliasName = "string",
          Arn = "string",
          TemplateVersionNumber = 123
        )
      ),
      Status = 123,
      RequestId = "string",
      NextToken = "string"
    )

### Request syntax

    svc$list_template_aliases(
      AwsAccountId = "string",
      TemplateId = "string",
      NextToken = "string",
      MaxResults = 123
    )
