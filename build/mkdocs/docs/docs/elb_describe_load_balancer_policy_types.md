<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_describe_load_balancer_policy_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified load balancer policy types or all load balancer policy types

### Description

Describes the specified load balancer policy types or all load balancer
policy types.

The description of each type indicates how it can be used. For example,
some policies can be used only with layer 7 listeners, some policies can
be used only with layer 4 listeners, and some policies can be used only
with your EC2 instances.

You can use `create_load_balancer_policy` to create a policy
configuration for any of these policy types. Then, depending on the
policy type, use either `set_load_balancer_policies_of_listener` or
`set_load_balancer_policies_for_backend_server` to set the policy.

### Usage

    elb_describe_load_balancer_policy_types(PolicyTypeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_describe_load_balancer_policy_types_:_PolicyTypeNames">PolicyTypeNames</code></td>
<td><p>The names of the policy types. If no names are specified,
describes all policy types defined by Elastic Load Balancing.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyTypeDescriptions = list(
        list(
          PolicyTypeName = "string",
          Description = "string",
          PolicyAttributeTypeDescriptions = list(
            list(
              AttributeName = "string",
              AttributeType = "string",
              Description = "string",
              DefaultValue = "string",
              Cardinality = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_load_balancer_policy_types(
      PolicyTypeNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the specified load balancer policy type.
    svc$describe_load_balancer_policy_types(
      PolicyTypeNames = list(
        "ProxyProtocolPolicyType"
      )
    )

    ## End(Not run)
