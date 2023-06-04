<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_delete_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Access Control List

### Description

Deletes an Access Control List. The ACL must first be disassociated from
the cluster before it can be deleted. For more information, see
[Authenticating users with Access Contol Lists
(ACLs)](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).

### Usage

    memorydb_delete_acl(ACLName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_delete_acl_:_ACLName">ACLName</code></td>
<td><p>[required] The name of the Access Control List to delete</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ACL = list(
        Name = "string",
        Status = "string",
        UserNames = list(
          "string"
        ),
        MinimumEngineVersion = "string",
        PendingChanges = list(
          UserNamesToRemove = list(
            "string"
          ),
          UserNamesToAdd = list(
            "string"
          )
        ),
        Clusters = list(
          "string"
        ),
        ARN = "string"
      )
    )

### Request syntax

    svc$delete_acl(
      ACLName = "string"
    )
