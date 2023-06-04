<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_detach_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a policy from an object

### Description

Detaches a policy from an object.

### Usage

    clouddirectory_detach_policy(DirectoryArn, PolicyReference,
      ObjectReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_detach_policy_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where both objects reside. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_detach_policy_:_PolicyReference">PolicyReference</code></td>
<td><p>[required] Reference that identifies the policy object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_detach_policy_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] Reference that identifies the object whose policy
object will be detached.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_policy(
      DirectoryArn = "string",
      PolicyReference = list(
        Selector = "string"
      ),
      ObjectReference = list(
        Selector = "string"
      )
    )
