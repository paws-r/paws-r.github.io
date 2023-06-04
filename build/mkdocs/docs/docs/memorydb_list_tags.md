<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags currently on a named resource

### Description

Lists all tags currently on a named resource. A tag is a key-value pair
where the key and value are case-sensitive. You can use tags to
categorize and track your MemoryDB resources. For more information, see
[Tagging your MemoryDB
resources](https://docs.aws.amazon.com/memorydb/latest/devguide/)

### Usage

    memorydb_list_tags(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_list_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which you want the list of tags</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags(
      ResourceArn = "string"
    )
