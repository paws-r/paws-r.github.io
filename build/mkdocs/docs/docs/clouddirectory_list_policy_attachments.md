<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_policy_attachments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all of the ObjectIdentifiers to which a given policy is attached

### Description

Returns all of the `ObjectIdentifiers` to which a given policy is
attached.

### Usage

    clouddirectory_list_policy_attachments(DirectoryArn, PolicyReference,
      NextToken, MaxResults, ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_policy_attachments_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where objects reside. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_policy_attachments_:_PolicyReference">PolicyReference</code></td>
<td><p>[required] The reference that identifies the policy
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_policy_attachments_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_policy_attachments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_policy_attachments_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectIdentifiers = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_policy_attachments(
      DirectoryArn = "string",
      PolicyReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
