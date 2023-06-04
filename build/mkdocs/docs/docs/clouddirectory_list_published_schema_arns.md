<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_published_schema_arns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the major version families of each published schema

### Description

Lists the major version families of each published schema. If a major
version ARN is provided as `SchemaArn`, the minor version revisions in
that family are listed instead.

### Usage

    clouddirectory_list_published_schema_arns(SchemaArn, NextToken,
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
id="clouddirectory_list_published_schema_arns_:_SchemaArn">SchemaArn</code></td>
<td><p>The response for <code>list_published_schema_arns</code> when
this parameter is used will list all minor version ARNs for a major
version.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_published_schema_arns_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_published_schema_arns_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArns = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_published_schema_arns(
      SchemaArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
