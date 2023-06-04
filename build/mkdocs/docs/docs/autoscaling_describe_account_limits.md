<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_account_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current Amazon EC2 Auto Scaling resource quotas for your account

### Description

Describes the current Amazon EC2 Auto Scaling resource quotas for your
account.

When you establish an Amazon Web Services account, the account has
initial quotas on the maximum number of Auto Scaling groups and launch
configurations that you can create in a given Region. For more
information, see [Quotas for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_describe_account_limits()

### Value

A list with the following syntax:

    list(
      MaxNumberOfAutoScalingGroups = 123,
      MaxNumberOfLaunchConfigurations = 123,
      NumberOfAutoScalingGroups = 123,
      NumberOfLaunchConfigurations = 123
    )

### Examples

    ## Not run: 
    # This example describes the Amazon EC2 Auto Scaling service quotas for
    # your account.
    svc$describe_account_limits()

    ## End(Not run)
