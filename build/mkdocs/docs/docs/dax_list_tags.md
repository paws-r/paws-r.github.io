<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all of the tags for a DAX cluster

### Description

List all of the tags for a DAX cluster. You can call `list_tags` up to
10 times per second, per account.

### Usage

    dax_list_tags(ResourceName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_list_tags_:_ResourceName">ResourceName</code></td>
<td><p>[required] The name of the DAX resource to which the tags
belong.</p></td>
</tr>
<tr class="even">
<td><code id="dax_list_tags_:_NextToken">NextToken</code></td>
<td><p>An optional token returned from a prior request. Use this token
for pagination of results from this action. If this parameter is
specified, the response includes only results beyond the token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags(
      ResourceName = "string",
      NextToken = "string"
    )
