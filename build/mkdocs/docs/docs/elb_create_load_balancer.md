<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_create_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Classic Load Balancer

### Description

Creates a Classic Load Balancer.

You can add listeners, security groups, subnets, and tags when you
create your load balancer, or you can add them later using
`create_load_balancer_listeners`,
`apply_security_groups_to_load_balancer`,
`attach_load_balancer_to_subnets`, and `add_tags`.

To describe your current load balancers, see `describe_load_balancers`.
When you are finished with a load balancer, you can delete it using
`delete_load_balancer`.

You can create up to 20 load balancers per region per account. You can
request an increase for the number of load balancers for your account.
For more information, see [Limits for Your Classic Load
Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_create_load_balancer(LoadBalancerName, Listeners, AvailabilityZones,
      Subnets, SecurityGroups, Scheme, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_create_load_balancer_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p>
<p>This name must be unique within your set of load balancers for the
region, must have a maximum of 32 characters, must contain only
alphanumeric characters or hyphens, and cannot begin or end with a
hyphen.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_create_load_balancer_:_Listeners">Listeners</code></td>
<td><p>[required] The listeners.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners
for Your Classic Load Balancer</a> in the <em>Classic Load Balancers
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_create_load_balancer_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>One or more Availability Zones from the same region as the load
balancer.</p>
<p>You must specify at least one Availability Zone.</p>
<p>You can add more Availability Zones after you create the load
balancer using
<code>enable_availability_zones_for_load_balancer</code>.</p></td>
</tr>
<tr class="even">
<td><code id="elb_create_load_balancer_:_Subnets">Subnets</code></td>
<td><p>The IDs of the subnets in your VPC to attach to the load
balancer. Specify one subnet per Availability Zone specified in
<code>AvailabilityZones</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_create_load_balancer_:_SecurityGroups">SecurityGroups</code></td>
<td><p>The IDs of the security groups to assign to the load
balancer.</p></td>
</tr>
<tr class="even">
<td><code id="elb_create_load_balancer_:_Scheme">Scheme</code></td>
<td><p>The type of a load balancer. Valid only for load balancers in a
VPC.</p>
<p>By default, Elastic Load Balancing creates an Internet-facing load
balancer with a DNS name that resolves to public IP addresses. For more
information about Internet-facing and Internal load balancers, see <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme">Load
Balancer Scheme</a> in the <em>Elastic Load Balancing User
Guide</em>.</p>
<p>Specify <code>internal</code> to create a load balancer with a DNS
name that resolves to private IP addresses.</p></td>
</tr>
<tr class="odd">
<td><code id="elb_create_load_balancer_:_Tags">Tags</code></td>
<td><p>A list of tags to assign to the load balancer.</p>
<p>For more information about tagging your load balancer, see <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag
Your Classic Load Balancer</a> in the <em>Classic Load Balancers
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DNSName = "string"
    )

### Request syntax

    svc$create_load_balancer(
      LoadBalancerName = "string",
      Listeners = list(
        list(
          Protocol = "string",
          LoadBalancerPort = 123,
          InstanceProtocol = "string",
          InstancePort = 123,
          SSLCertificateId = "string"
        )
      ),
      AvailabilityZones = list(
        "string"
      ),
      Subnets = list(
        "string"
      ),
      SecurityGroups = list(
        "string"
      ),
      Scheme = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates a load balancer with an HTTP listener in a VPC.
    svc$create_load_balancer(
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 80L,
          Protocol = "HTTP"
        )
      ),
      LoadBalancerName = "my-load-balancer",
      SecurityGroups = list(
        "sg-a61988c3"
      ),
      Subnets = list(
        "subnet-15aaab61"
      )
    )

    # This example creates a load balancer with an HTTP listener in
    # EC2-Classic.
    svc$create_load_balancer(
      AvailabilityZones = list(
        "us-west-2a"
      ),
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 80L,
          Protocol = "HTTP"
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    # This example creates a load balancer with an HTTPS listener in a VPC.
    svc$create_load_balancer(
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 80L,
          Protocol = "HTTP"
        ),
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 443L,
          Protocol = "HTTPS",
          SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        )
      ),
      LoadBalancerName = "my-load-balancer",
      SecurityGroups = list(
        "sg-a61988c3"
      ),
      Subnets = list(
        "subnet-15aaab61"
      )
    )

    # This example creates a load balancer with an HTTPS listener in
    # EC2-Classic.
    svc$create_load_balancer(
      AvailabilityZones = list(
        "us-west-2a"
      ),
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 80L,
          Protocol = "HTTP"
        ),
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 443L,
          Protocol = "HTTPS",
          SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        )
      ),
      LoadBalancerName = "my-load-balancer"
    )

    # This example creates an internal load balancer with an HTTP listener in
    # a VPC.
    svc$create_load_balancer(
      Listeners = list(
        list(
          InstancePort = 80L,
          InstanceProtocol = "HTTP",
          LoadBalancerPort = 80L,
          Protocol = "HTTP"
        )
      ),
      LoadBalancerName = "my-load-balancer",
      Scheme = "internal",
      SecurityGroups = list(
        "sg-a61988c3"
      ),
      Subnets = list(
        "subnet-15aaab61"
      )
    )

    ## End(Not run)
