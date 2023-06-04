<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disassociate_iam_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an IAM instance profile from a running or stopped instance

### Description

Disassociates an IAM instance profile from a running or stopped
instance.

Use `describe_iam_instance_profile_associations` to get the association
ID.

### Usage

    ec2_disassociate_iam_instance_profile(AssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disassociate_iam_instance_profile_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the IAM instance profile
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

    svc$disassociate_iam_instance_profile(
      AssociationId = "string"
    )

### Examples

    ## Not run: 
    # This example disassociates the specified IAM instance profile from an
    # instance.
    svc$disassociate_iam_instance_profile(
      AssociationId = "iip-assoc-05020b59952902f5f"
    )

    ## End(Not run)
