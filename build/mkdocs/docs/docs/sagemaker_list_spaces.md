<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_spaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists spaces

### Description

Lists spaces.

### Usage

    sagemaker_list_spaces(NextToken, MaxResults, SortOrder, SortBy,
      DomainIdEquals, SpaceNameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_spaces_:_NextToken">NextToken</code></td>
<td><p>If the previous response was truncated, you will receive this
token. Use it in your next request to receive the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_spaces_:_MaxResults">MaxResults</code></td>
<td><p>Returns a list up to a specified limit.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_spaces_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_spaces_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_spaces_:_DomainIdEquals">DomainIdEquals</code></td>
<td><p>A parameter to search for the Domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_spaces_:_SpaceNameContains">SpaceNameContains</code></td>
<td><p>A parameter by which to filter the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Spaces = list(
        list(
          DomainId = "string",
          SpaceName = "string",
          Status = "Deleting"|"Failed"|"InService"|"Pending"|"Updating"|"Update_Failed"|"Delete_Failed",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_spaces(
      NextToken = "string",
      MaxResults = 123,
      SortOrder = "Ascending"|"Descending",
      SortBy = "CreationTime"|"LastModifiedTime",
      DomainIdEquals = "string",
      SpaceNameContains = "string"
    )
