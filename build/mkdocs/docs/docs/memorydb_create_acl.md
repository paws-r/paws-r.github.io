<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_create_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Access Control List

### Description

Creates an Access Control List. For more information, see
[Authenticating users with Access Contol Lists
(ACLs)](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).

### Usage

    memorydb_create_acl(ACLName, UserNames, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_create_acl_:_ACLName">ACLName</code></td>
<td><p>[required] The name of the Access Control List.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_create_acl_:_UserNames">UserNames</code></td>
<td><p>The list of users that belong to the Access Control
List.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_create_acl_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
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

    svc$create_acl(
      ACLName = "string",
      UserNames = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
