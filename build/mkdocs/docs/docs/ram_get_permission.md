<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_get_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the contents of a managed permission in JSON format

### Description

Retrieves the contents of a managed permission in JSON format.

### Usage

    ram_get_permission(permissionArn, permissionVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_get_permission_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the permission whose contents you want to
retrieve. To find the ARN for a permission, use either the
<code>list_permissions</code> operation or go to the Permissions library
page in the RAM console and then choose the name of the permission. The
ARN is displayed on the detail page.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_get_permission_:_permissionVersion">permissionVersion</code></td>
<td><p>Specifies the version number of the RAM permission to retrieve.
If you don't specify this parameter, the operation retrieves the default
version.</p>
<p>To see the list of available versions, use
<code>list_permission_versions</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      permission = list(
        arn = "string",
        version = "string",
        defaultVersion = TRUE|FALSE,
        name = "string",
        resourceType = "string",
        permission = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        isResourceTypeDefault = TRUE|FALSE,
        permissionType = "CUSTOMER_MANAGED"|"AWS_MANAGED",
        featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD",
        status = "ATTACHABLE"|"UNATTACHABLE"|"DELETING"|"DELETED",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_permission(
      permissionArn = "string",
      permissionVersion = 123
    )
