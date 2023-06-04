<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_update_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the list of users that belong to the Access Control List

### Description

Changes the list of users that belong to the Access Control List.

### Usage

    memorydb_update_acl(ACLName, UserNamesToAdd, UserNamesToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_update_acl_:_ACLName">ACLName</code></td>
<td><p>[required] The name of the Access Control List</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_acl_:_UserNamesToAdd">UserNamesToAdd</code></td>
<td><p>The list of users to add to the Access Control List</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_acl_:_UserNamesToRemove">UserNamesToRemove</code></td>
<td><p>The list of users to remove from the Access Control List</p></td>
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

    svc$update_acl(
      ACLName = "string",
      UserNamesToAdd = list(
        "string"
      ),
      UserNamesToRemove = list(
        "string"
      )
    )
