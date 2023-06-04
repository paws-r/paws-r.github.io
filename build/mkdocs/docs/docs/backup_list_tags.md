<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault

### Description

Returns a list of key-value pairs assigned to a target recovery point,
backup plan, or backup vault.

`list_tags` only works for resource types that support full Backup
management of their backups. Those resource types are listed in the
"Full Backup management" section of the [Feature availability by
resource](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource)
table.

### Usage

    backup_list_tags(ResourceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_list_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a resource. The format of the ARN depends on the type of resource. Valid
targets for <code>list_tags</code> are recovery points, backup plans,
and backup vaults.</p></td>
</tr>
<tr class="even">
<td><code id="backup_list_tags_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="odd">
<td><code id="backup_list_tags_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags(
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
