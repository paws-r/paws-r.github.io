<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_attach_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a policy object to a regular object

### Description

Attaches a policy object to a regular object. An object can have a
limited number of attached policies.

### Usage

    clouddirectory_attach_policy(DirectoryArn, PolicyReference,
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
id="clouddirectory_attach_policy_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where both objects reside. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_attach_policy_:_PolicyReference">PolicyReference</code></td>
<td><p>[required] The reference that is associated with the policy
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_attach_policy_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] The reference that identifies the object to which the
policy will be attached.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$attach_policy(
      DirectoryArn = "string",
      PolicyReference = list(
        Selector = "string"
      ),
      ObjectReference = list(
        Selector = "string"
      )
    )
