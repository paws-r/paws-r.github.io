<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_list_lenses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the available lenses

### Description

List the available lenses.

### Usage

    wellarchitected_list_lenses(NextToken, MaxResults, LensType, LensStatus,
      LensName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_list_lenses_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lenses_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lenses_:_LensType">LensType</code></td>
<td><p>The type of lenses to be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_list_lenses_:_LensStatus">LensStatus</code></td>
<td><p>The status of lenses to be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_list_lenses_:_LensName">LensName</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LensSummaries = list(
        list(
          LensArn = "string",
          LensAlias = "string",
          LensName = "string",
          LensType = "AWS_OFFICIAL"|"CUSTOM_SHARED"|"CUSTOM_SELF",
          Description = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LensVersion = "string",
          Owner = "string",
          LensStatus = "CURRENT"|"NOT_CURRENT"|"DEPRECATED"|"DELETED"|"UNSHARED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lenses(
      NextToken = "string",
      MaxResults = 123,
      LensType = "AWS_OFFICIAL"|"CUSTOM_SHARED"|"CUSTOM_SELF",
      LensStatus = "ALL"|"DRAFT"|"PUBLISHED",
      LensName = "string"
    )
