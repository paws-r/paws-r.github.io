<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves metadata about a directory

### Description

Retrieves metadata about a directory.

### Usage

    clouddirectory_get_directory(DirectoryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_directory_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Directory = list(
        Name = "string",
        DirectoryArn = "string",
        State = "ENABLED"|"DISABLED"|"DELETED",
        CreationDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_directory(
      DirectoryArn = "string"
    )
