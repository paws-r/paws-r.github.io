<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_iam_instance_profile_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes your IAM instance profile associations

### Description

Describes your IAM instance profile associations.

### Usage

    ec2_describe_iam_instance_profile_associations(AssociationIds, Filters,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_iam_instance_profile_associations_:_AssociationIds">AssociationIds</code></td>
<td><p>The IAM instance profile associations.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_iam_instance_profile_associations_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>instance-id</code> - The ID of the instance.</p></li>
<li><p><code>state</code> - The state of the association
(<code>associating</code> | <code>associated</code> |
<code>disassociating</code>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_iam_instance_profile_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_iam_instance_profile_associations_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IamInstanceProfileAssociations = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_iam_instance_profile_associations(
      AssociationIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the specified IAM instance profile association.
    svc$describe_iam_instance_profile_associations(
      AssociationIds = list(
        "iip-assoc-0db249b1f25fa24b8"
      )
    )

    ## End(Not run)
