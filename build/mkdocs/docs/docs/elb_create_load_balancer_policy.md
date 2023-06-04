<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_create_load_balancer_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a policy with the specified attributes for the specified load balancer

### Description

Creates a policy with the specified attributes for the specified load
balancer.

Policies are settings that are saved for your load balancer and that can
be applied to the listener or the application server, depending on the
policy type.

### Usage

    elb_create_load_balancer_policy(LoadBalancerName, PolicyName,
      PolicyTypeName, PolicyAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_create_load_balancer_policy_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_create_load_balancer_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the load balancer policy to be created.
This name must be unique within the set of policies for this load
balancer.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_create_load_balancer_policy_:_PolicyTypeName">PolicyTypeName</code></td>
<td><p>[required] The name of the base policy type. To get the list of
policy types, use
<code>describe_load_balancer_policy_types</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_create_load_balancer_policy_:_PolicyAttributes">PolicyAttributes</code></td>
<td><p>The policy attributes.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_load_balancer_policy(
      LoadBalancerName = "string",
      PolicyName = "string",
      PolicyTypeName = "string",
      PolicyAttributes = list(
        list(
          AttributeName = "string",
          AttributeValue = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates a policy that enables Proxy Protocol on the
    # specified load balancer.
    svc$create_load_balancer_policy(
      LoadBalancerName = "my-load-balancer",
      PolicyAttributes = list(
        list(
          AttributeName = "ProxyProtocol",
          AttributeValue = "true"
        )
      ),
      PolicyName = "my-ProxyProtocol-policy",
      PolicyTypeName = "ProxyProtocolPolicyType"
    )

    # This example creates a public key policy.
    svc$create_load_balancer_policy(
      LoadBalancerName = "my-load-balancer",
      PolicyAttributes = list(
        list(
          AttributeName = "PublicKey",
          AttributeValue = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwAYUjnf..."
        )
      ),
      PolicyName = "my-PublicKey-policy",
      PolicyTypeName = "PublicKeyPolicyType"
    )

    # This example creates a backend server authentication policy that enables
    # authentication on your backend instance using a public key policy.
    svc$create_load_balancer_policy(
      LoadBalancerName = "my-load-balancer",
      PolicyAttributes = list(
        list(
          AttributeName = "PublicKeyPolicyName",
          AttributeValue = "my-PublicKey-policy"
        )
      ),
      PolicyName = "my-authentication-policy",
      PolicyTypeName = "BackendServerAuthenticationPolicyType"
    )

    ## End(Not run)
