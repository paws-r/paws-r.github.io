<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a namespace in Amazon Redshift Serverless

### Description

Returns information about a namespace in Amazon Redshift Serverless.

### Usage

    redshiftserverless_get_namespace(namespaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_namespace_:_namespaceName">namespaceName</code></td>
<td><p>[required] The name of the namespace to retrieve information
for.</p></td>
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

    svc$get_namespace(
      namespaceName = "string"
    )
