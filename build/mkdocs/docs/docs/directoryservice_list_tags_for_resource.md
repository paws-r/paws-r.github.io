<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags on a directory

### Description

Lists all tags on a directory.

### Usage

    directoryservice_list_tags_for_resource(ResourceId, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_list_tags_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] Identifier (ID) of the directory for which you want to
retrieve tags.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_list_tags_for_resource_:_Limit">Limit</code></td>
<td><p>Reserved for future use.</p></td>
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

    svc$list_tags_for_resource(
      ResourceId = "string",
      NextToken = "string",
      Limit = 123
    )
