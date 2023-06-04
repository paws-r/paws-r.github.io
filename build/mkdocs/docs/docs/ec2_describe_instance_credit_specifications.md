<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_instance_credit_specifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the credit option for CPU usage of the specified burstable performance instances

### Description

Describes the credit option for CPU usage of the specified burstable
performance instances. The credit options are `standard` and
`unlimited`.

If you do not specify an instance ID, Amazon EC2 returns burstable
performance instances with the `unlimited` credit option, as well as
instances that were previously configured as T2, T3, and T3a with the
`unlimited` credit option. For example, if you resize a T2 instance,
while it is configured as `unlimited`, to an M4 instance, Amazon EC2
returns the M4 instance.

If you specify one or more instance IDs, Amazon EC2 returns the credit
option (`standard` or `unlimited`) of those instances. If you specify an
instance ID that is not valid, such as an instance that is not a
burstable performance instance, an error is returned.

Recently terminated instances might appear in the returned results. This
interval is usually less than one hour.

If an Availability Zone is experiencing a service disruption and you
specify instance IDs in the affected zone, or do not specify any
instance IDs at all, the call fails. If you specify only instance IDs in
an unaffected zone, the call works normally.

For more information, see [Burstable performance
instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_instance_credit_specifications(DryRun, Filters,
      InstanceIds, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_instance_credit_specifications_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_credit_specifications_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>instance-id</code> - The ID of the instance.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_instance_credit_specifications_:_InstanceIds">InstanceIds</code></td>
<td><p>The instance IDs.</p>
<p>Default: Describes all your instances.</p>
<p>Constraints: Maximum 1000 explicitly specified instance IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_credit_specifications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p>
<p>You cannot specify this parameter and the instance IDs parameter in
the same call.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_instance_credit_specifications_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceCreditSpecifications = list(
        list(
          InstanceId = "string",
          CpuCredits = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_credit_specifications(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      InstanceIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
