<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_access_control_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists one or more access control configurations for an index

### Description

Lists one or more access control configurations for an index. This
includes user and group access information for your documents. This is
useful for user context filtering, where search results are filtered
based on the user or their group access to documents.

### Usage

    kendra_list_access_control_configurations(IndexId, NextToken,
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
id="kendra_list_access_control_configurations_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the access control
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_access_control_configurations_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there's more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
access control configurations.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_access_control_configurations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of access control configurations to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      AccessControlConfigurations = list(
        list(
          Id = "string"
        )
      )
    )

### Request syntax

    svc$list_access_control_configurations(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
