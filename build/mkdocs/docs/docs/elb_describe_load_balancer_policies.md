<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_load_balancer_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified policies

### Description

Describes the specified policies.

If you specify a load balancer name, the action returns the descriptions
of all policies created for the load balancer. If you specify a policy
name associated with your load balancer, the action returns the
description of that policy. If you don't specify a load balancer name,
the action returns descriptions of the specified sample policies, or
descriptions of all sample policies. The names of the sample policies
have the `⁠ELBSample-⁠` prefix.

### Usage

    elb_describe_load_balancer_policies(LoadBalancerName, PolicyNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_describe_load_balancer_policies_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_describe_load_balancer_policies_:_PolicyNames">PolicyNames</code></td>
<td><p>The names of the policies.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyDescriptions = list(
        list(
          PolicyName = "string",
          PolicyTypeName = "string",
          PolicyAttributeDescriptions = list(
            list(
              AttributeName = "string",
              AttributeValue = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_load_balancer_policies(
      LoadBalancerName = "string",
      PolicyNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the specified policy associated with the
    # specified load balancer.
    svc$describe_load_balancer_policies(
      LoadBalancerName = "my-load-balancer",
      PolicyNames = list(
        "my-authentication-policy"
      )
    )

    ## End(Not run)
