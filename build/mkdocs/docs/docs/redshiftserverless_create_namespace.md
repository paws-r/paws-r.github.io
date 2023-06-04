<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_create_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a namespace in Amazon Redshift Serverless

### Description

Creates a namespace in Amazon Redshift Serverless.

### Usage

    redshiftserverless_create_namespace(adminUserPassword, adminUsername,
      dbName, defaultIamRoleArn, iamRoles, kmsKeyId, logExports,
      namespaceName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_create_namespace_:_adminUserPassword">adminUserPassword</code></td>
<td><p>The password of the administrator for the first database created
in the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_namespace_:_adminUsername">adminUsername</code></td>
<td><p>The username of the administrator for the first database created
in the namespace.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_namespace_:_dbName">dbName</code></td>
<td><p>The name of the first database created in the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_namespace_:_defaultIamRoleArn">defaultIamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role to set as a
default in the namespace.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_namespace_:_iamRoles">iamRoles</code></td>
<td><p>A list of IAM roles to associate with the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_namespace_:_kmsKeyId">kmsKeyId</code></td>
<td><p>The ID of the Amazon Web Services Key Management Service key used
to encrypt your data.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_namespace_:_logExports">logExports</code></td>
<td><p>The types of logs the namespace can export. Available export
types are <code>userlog</code>, <code>connectionlog</code>, and
<code>useractivitylog</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_namespace_:_namespaceName">namespaceName</code></td>
<td><p>[required] The name of the namespace.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_namespace_:_tags">tags</code></td>
<td><p>A list of tag instances.</p></td>
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

    svc$create_namespace(
      adminUserPassword = "string",
      adminUsername = "string",
      dbName = "string",
      defaultIamRoleArn = "string",
      iamRoles = list(
        "string"
      ),
      kmsKeyId = "string",
      logExports = list(
        "useractivitylog"|"userlog"|"connectionlog"
      ),
      namespaceName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
