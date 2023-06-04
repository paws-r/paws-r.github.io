<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_directories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists directories created within an account

### Description

Lists directories created within an account.

### Usage

    clouddirectory_list_directories(NextToken, MaxResults, state)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_directories_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_directories_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code id="clouddirectory_list_directories_:_state">state</code></td>
<td><p>The state of the directories in the list. Can be either Enabled,
Disabled, or Deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Directories = list(
        list(
          Name = "string",
          DirectoryArn = "string",
          State = "ENABLED"|"DISABLED"|"DELETED",
          CreationDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_directories(
      NextToken = "string",
      MaxResults = 123,
      state = "ENABLED"|"DISABLED"|"DELETED"
    )
