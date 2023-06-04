<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_protected_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of resources successfully backed up by Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type

### Description

Returns an array of resources successfully backed up by Backup,
including the time the resource was saved, an Amazon Resource Name (ARN)
of the resource, and a resource type.

### Usage

    backup_list_protected_resources(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_protected_resources_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_protected_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          ResourceArn = "string",
          ResourceType = "string",
          LastBackupTime = as.POSIXct(
            "2015-01-01"
          ),
          ResourceName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_protected_resources(
      NextToken = "string",
      MaxResults = 123
    )
