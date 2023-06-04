<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_protected_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a saved resource, including the last time it was backed up, its Amazon Resource Name (ARN), and the Amazon Web Services service type of the saved resource

### Description

Returns information about a saved resource, including the last time it
was backed up, its Amazon Resource Name (ARN), and the Amazon Web
Services service type of the saved resource.

### Usage

    backup_describe_protected_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_protected_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
a resource. The format of the ARN depends on the resource type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      ResourceType = "string",
      LastBackupTime = as.POSIXct(
        "2015-01-01"
      ),
      ResourceName = "string"
    )

### Request syntax

    svc$describe_protected_resource(
      ResourceArn = "string"
    )
