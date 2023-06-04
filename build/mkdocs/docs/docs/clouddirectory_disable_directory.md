<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_disable_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the specified directory

### Description

Disables the specified directory. Disabled directories cannot be read or
written to. Only enabled directories can be disabled. Disabled
directories may be reenabled.

### Usage

    clouddirectory_disable_directory(DirectoryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_disable_directory_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory to disable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryArn = "string"
    )

### Request syntax

    svc$disable_directory(
      DirectoryArn = "string"
    )
