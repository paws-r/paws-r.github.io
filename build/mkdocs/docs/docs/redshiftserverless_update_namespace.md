<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_update_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a namespace with the specified settings

### Description

Updates a namespace with the specified settings. Unless required, you
can't update multiple parameters in one request. For example, you must
specify both `adminUsername` and `adminUserPassword` to update either
field, but you can't update both `kmsKeyId` and `logExports` in a single
request.

### Usage

    redshiftserverless_update_namespace(adminUserPassword, adminUsername,
      defaultIamRoleArn, iamRoles, kmsKeyId, logExports, namespaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_update_namespace_:_adminUserPassword">adminUserPassword</code></td>
<td><p>The password of the administrator for the first database created
in the namespace. This parameter must be updated together with
<code>adminUsername</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_namespace_:_adminUsername">adminUsername</code></td>
<td><p>The username of the administrator for the first database created
in the namespace. This parameter must be updated together with
<code>adminUserPassword</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_namespace_:_defaultIamRoleArn">defaultIamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role to set as a
default in the namespace. This parameter must be updated together with
<code>iamRoles</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_namespace_:_iamRoles">iamRoles</code></td>
<td><p>A list of IAM roles to associate with the namespace. This
parameter must be updated together with
<code>defaultIamRoleArn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_namespace_:_kmsKeyId">kmsKeyId</code></td>
<td><p>The ID of the Amazon Web Services Key Management Service key used
to encrypt your data.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_update_namespace_:_logExports">logExports</code></td>
<td><p>The types of logs the namespace can export. The export types are
<code>userlog</code>, <code>connectionlog</code>, and
<code>useractivitylog</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_update_namespace_:_namespaceName">namespaceName</code></td>
<td><p>[required] The name of the namespace to update. You can't update
the name of a namespace once it is created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      namespace = list(
        adminUsername = "string",
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        dbName = "string",
        defaultIamRoleArn = "string",
        iamRoles = list(
          "string"
        ),
        kmsKeyId = "string",
        logExports = list(
          "useractivitylog"|"userlog"|"connectionlog"
        ),
        namespaceArn = "string",
        namespaceId = "string",
        namespaceName = "string",
        status = "AVAILABLE"|"MODIFYING"|"DELETING"
      )
    )

### Request syntax

    svc$update_namespace(
      adminUserPassword = "string",
      adminUsername = "string",
      defaultIamRoleArn = "string",
      iamRoles = list(
        "string"
      ),
      kmsKeyId = "string",
      logExports = list(
        "useractivitylog"|"userlog"|"connectionlog"
      ),
      namespaceName = "string"
    )
