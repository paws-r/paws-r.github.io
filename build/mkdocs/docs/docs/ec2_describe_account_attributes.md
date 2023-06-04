<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_account_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes attributes of your Amazon Web Services account

### Description

Describes attributes of your Amazon Web Services account. The following
are the supported account attributes:

-   `supported-platforms`: Indicates whether your account can launch
    instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.

-   `default-vpc`: The ID of the default VPC for your account, or
    `none`.

-   `max-instances`: This attribute is no longer supported. The returned
    value does not reflect your actual vCPU limit for running On-Demand
    Instances. For more information, see [On-Demand Instance
    Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits)
    in the *Amazon Elastic Compute Cloud User Guide*.

-   `vpc-max-security-groups-per-interface`: The maximum number of
    security groups that you can assign to a network interface.

-   `max-elastic-ips`: The maximum number of Elastic IP addresses that
    you can allocate for use with EC2-Classic.

-   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses
    that you can allocate for use with EC2-VPC.

We are retiring EC2-Classic on August 15, 2022. We recommend that you
migrate from EC2-Classic to a VPC. For more information, see [Migrate
from EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_describe_account_attributes(AttributeNames, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_account_attributes_:_AttributeNames">AttributeNames</code></td>
<td><p>The account attribute names.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_account_attributes_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountAttributes = list(
        list(
          AttributeName = "string",
          AttributeValues = list(
            list(
              AttributeValue = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_account_attributes(
      AttributeNames = list(
        "supported-platforms"|"default-vpc"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the supported-platforms attribute for your AWS
    # account.
    svc$describe_account_attributes(
      AttributeNames = list(
        "supported-platforms"
      )
    )

    # This example describes the attributes for your AWS account.
    svc$describe_account_attributes()

    ## End(Not run)
