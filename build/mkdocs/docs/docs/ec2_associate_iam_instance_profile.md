<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_associate_iam_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an IAM instance profile with a running or stopped instance

### Description

Associates an IAM instance profile with a running or stopped instance.
You cannot associate more than one IAM instance profile with an
instance.

### Usage

    ec2_associate_iam_instance_profile(IamInstanceProfile, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_associate_iam_instance_profile_:_IamInstanceProfile">IamInstanceProfile</code></td>
<td><p>[required] The IAM instance profile.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_associate_iam_instance_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
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

    svc$associate_iam_instance_profile(
      IamInstanceProfile = list(
        Arn = "string",
        Name = "string"
      ),
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example associates an IAM instance profile named admin-role with
    # the specified instance.
    svc$associate_iam_instance_profile(
      IamInstanceProfile = list(
        Name = "admin-role"
      ),
      InstanceId = "i-123456789abcde123"
    )

    ## End(Not run)
