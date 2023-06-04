<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_applied_schema_arns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists schema major versions applied to a directory

### Description

Lists schema major versions applied to a directory. If `SchemaArn` is
provided, lists the minor version.

### Usage

    clouddirectory_list_applied_schema_arns(DirectoryArn, SchemaArn,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_applied_schema_arns_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory you are listing.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_applied_schema_arns_:_SchemaArn">SchemaArn</code></td>
<td><p>The response for <code>list_applied_schema_arns</code> when this
parameter is used will list all minor version ARNs for a major
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_applied_schema_arns_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_applied_schema_arns_:_MaxResults">MaxResults</code></td>
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

    svc$list_applied_schema_arns(
      DirectoryArn = "string",
      SchemaArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
