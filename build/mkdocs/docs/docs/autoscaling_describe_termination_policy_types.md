<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_termination_policy_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the termination policies supported by Amazon EC2 Auto Scaling

### Description

Describes the termination policies supported by Amazon EC2 Auto Scaling.

For more information, see [Work with Amazon EC2 Auto Scaling termination
policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_describe_termination_policy_types()

### Value

A list with the following syntax:

    list(
      TerminationPolicyTypes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the available termination policy types.
    svc$describe_termination_policy_types()

    ## End(Not run)
