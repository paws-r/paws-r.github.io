<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_enable_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified directory

### Description

Enables the specified directory. Only disabled directories can be
enabled. Once enabled, the directory can then be read and written to.

### Usage

    clouddirectory_enable_directory(DirectoryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_enable_directory_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory to enable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryArn = "string"
    )

### Request syntax

    svc$enable_directory(
      DirectoryArn = "string"
    )
