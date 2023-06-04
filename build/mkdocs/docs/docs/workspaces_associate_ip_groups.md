<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_associate_ip_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified IP access control group with the specified directory

### Description

Associates the specified IP access control group with the specified
directory.

### Usage

    workspaces_associate_ip_groups(DirectoryId, GroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_associate_ip_groups_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_associate_ip_groups_:_GroupIds">GroupIds</code></td>
<td><p>[required] The identifiers of one or more IP access control
groups.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_ip_groups(
      DirectoryId = "string",
      GroupIds = list(
        "string"
      )
    )
