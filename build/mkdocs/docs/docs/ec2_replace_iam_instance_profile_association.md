<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_replace_iam_instance_profile_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces an IAM instance profile for the specified running instance

### Description

Replaces an IAM instance profile for the specified running instance. You
can use this action to change the IAM instance profile that's associated
with an instance without having to disassociate the existing IAM
instance profile first.

Use `describe_iam_instance_profile_associations` to get the association
ID.

### Usage

    ec2_replace_iam_instance_profile_association(IamInstanceProfile,
      AssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_replace_iam_instance_profile_association_:_IamInstanceProfile">IamInstanceProfile</code></td>
<td><p>[required] The IAM instance profile.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_replace_iam_instance_profile_association_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the existing IAM instance profile
association.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IamInstanceProfileAssociation = list(
        AssociationId = "string",
        InstanceId = "string",
        IamInstanceProfile = list(
          Arn = "string",
          Id = "string"
        ),
        State = "associating"|"associated"|"disassociating"|"disassociated",
        Timestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$replace_iam_instance_profile_association(
      IamInstanceProfile = list(
        Arn = "string",
        Name = "string"
      ),
      AssociationId = "string"
    )
