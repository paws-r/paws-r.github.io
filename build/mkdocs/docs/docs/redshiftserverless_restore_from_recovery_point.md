<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_restore_from_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restore the data from a recovery point

### Description

Restore the data from a recovery point.

### Usage

    redshiftserverless_restore_from_recovery_point(namespaceName,
      recoveryPointId, workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_restore_from_recovery_point_:_namespaceName">namespaceName</code></td>
<td><p>[required] The name of the namespace to restore data
into.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_from_recovery_point_:_recoveryPointId">recoveryPointId</code></td>
<td><p>[required] The unique identifier of the recovery point to restore
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_from_recovery_point_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup used to restore
data.</p></td>
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
      ),
      recoveryPointId = "string"
    )

### Request syntax

    svc$restore_from_recovery_point(
      namespaceName = "string",
      recoveryPointId = "string",
      workgroupName = "string"
    )
