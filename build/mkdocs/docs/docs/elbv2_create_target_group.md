<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_create_target_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a target group

### Description

Creates a target group.

For more information, see the following:

-   [Target groups for your Application Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)

-   [Target groups for your Network Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)

-   [Target groups for your Gateway Load
    Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html)

This operation is idempotent, which means that it completes at most one
time. If you attempt to create multiple target groups with the same
settings, each call succeeds.

### Usage

    elbv2_create_target_group(Name, Protocol, ProtocolVersion, Port, VpcId,
      HealthCheckProtocol, HealthCheckPort, HealthCheckEnabled,
      HealthCheckPath, HealthCheckIntervalSeconds, HealthCheckTimeoutSeconds,
      HealthyThresholdCount, UnhealthyThresholdCount, Matcher, TargetType,
      Tags, IpAddressType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_create_target_group_:_Name">Name</code></td>
<td><p>[required] The name of the target group.</p>
<p>This name must be unique per region per account, can have a maximum
of 32 characters, must contain only alphanumeric characters or hyphens,
and must not begin or end with a hyphen.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_target_group_:_Protocol">Protocol</code></td>
<td><p>The protocol to use for routing traffic to the targets. For
Application Load Balancers, the supported protocols are HTTP and HTTPS.
For Network Load Balancers, the supported protocols are TCP, TLS, UDP,
or TCP_UDP. For Gateway Load Balancers, the supported protocol is
GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target
group. If the target is a Lambda function, this parameter does not
apply.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_ProtocolVersion">ProtocolVersion</code></td>
<td><p>[HTTP/HTTPS protocol] The protocol version. Specify
<code>GRPC</code> to send requests to targets using gRPC. Specify
<code>HTTP2</code> to send requests to targets using HTTP/2. The default
is <code>HTTP1</code>, which sends requests to targets using
HTTP/1.1.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_target_group_:_Port">Port</code></td>
<td><p>The port on which the targets receive traffic. This port is used
unless you specify a port override when registering the target. If the
target is a Lambda function, this parameter does not apply. If the
protocol is GENEVE, the supported port is 6081.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_create_target_group_:_VpcId">VpcId</code></td>
<td><p>The identifier of the virtual private cloud (VPC). If the target
is a Lambda function, this parameter does not apply. Otherwise, this
parameter is required.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_create_target_group_:_HealthCheckProtocol">HealthCheckProtocol</code></td>
<td><p>The protocol the load balancer uses when performing health checks
on targets. For Application Load Balancers, the default is HTTP. For
Network Load Balancers and Gateway Load Balancers, the default is TCP.
The TCP protocol is not supported for health checks if the protocol of
the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP
protocols are not supported for health checks.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_HealthCheckPort">HealthCheckPort</code></td>
<td><p>The port the load balancer uses when performing health checks on
targets. If the protocol is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the
default is <code>traffic-port</code>, which is the port on which each
target receives traffic from the load balancer. If the protocol is
GENEVE, the default is port 80.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_create_target_group_:_HealthCheckEnabled">HealthCheckEnabled</code></td>
<td><p>Indicates whether health checks are enabled. If the target type
is <code>lambda</code>, health checks are disabled by default but can be
enabled. If the target type is <code>instance</code>, <code>ip</code>,
or <code>alb</code>, health checks are always enabled and cannot be
disabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_HealthCheckPath">HealthCheckPath</code></td>
<td><p>[HTTP/HTTPS health checks] The destination for health checks on
the targets.</p>
<p>[HTTP1 or HTTP2 protocol version] The ping path. The default is
/.</p>
<p>[GRPC protocol version] The path of a custom health check method with
the format /package.service/method. The default is /Amazon Web
Services.ALB/healthcheck.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_create_target_group_:_HealthCheckIntervalSeconds">HealthCheckIntervalSeconds</code></td>
<td><p>The approximate amount of time, in seconds, between health checks
of an individual target. The range is 5-300. If the target group
protocol is TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS, the default is 30
seconds. If the target group protocol is GENEVE, the default is 10
seconds. If the target type is <code>lambda</code>, the default is 35
seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_HealthCheckTimeoutSeconds">HealthCheckTimeoutSeconds</code></td>
<td><p>The amount of time, in seconds, during which no response from a
target means a failed health check. The range is 2–120 seconds. For
target groups with a protocol of HTTP, the default is 6 seconds. For
target groups with a protocol of TCP, TLS or HTTPS, the default is 10
seconds. For target groups with a protocol of GENEVE, the default is 5
seconds. If the target type is <code>lambda</code>, the default is 30
seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_create_target_group_:_HealthyThresholdCount">HealthyThresholdCount</code></td>
<td><p>The number of consecutive health check successes required before
considering a target healthy. The range is 2-10. If the target group
protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 5. For
target groups with a protocol of GENEVE, the default is 5. If the target
type is <code>lambda</code>, the default is 5.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_UnhealthyThresholdCount">UnhealthyThresholdCount</code></td>
<td><p>The number of consecutive health check failures required before
considering a target unhealthy. The range is 2-10. If the target group
protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 2. For
target groups with a protocol of GENEVE, the default is 2. If the target
type is <code>lambda</code>, the default is 5.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_target_group_:_Matcher">Matcher</code></td>
<td><p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when
checking for a successful response from a target. For target groups with
a protocol of TCP, TCP_UDP, UDP or TLS the range is 200-599. For target
groups with a protocol of HTTP or HTTPS, the range is 200-499. For
target groups with a protocol of GENEVE, the range is 200-399.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_TargetType">TargetType</code></td>
<td><p>The type of target that you must specify when registering targets
with this target group. You can't specify targets for a target group
using more than one target type.</p>
<ul>
<li><p><code>instance</code> - Register targets by instance ID. This is
the default value.</p></li>
<li><p><code>ip</code> - Register targets by IP address. You can specify
IP addresses from the subnets of the virtual private cloud (VPC) for the
target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and
192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't
specify publicly routable IP addresses.</p></li>
<li><p><code>lambda</code> - Register a single Lambda function as a
target.</p></li>
<li><p><code>alb</code> - Register a single Application Load Balancer as
a target.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_target_group_:_Tags">Tags</code></td>
<td><p>The tags to assign to the target group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_create_target_group_:_IpAddressType">IpAddressType</code></td>
<td><p>The type of IP address used for this target group. The possible
values are <code>ipv4</code> and <code>ipv6</code>. This is an optional
parameter. If not specified, the IP address type defaults to
<code>ipv4</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TargetGroups = list(
        list(
          TargetGroupArn = "string",
          TargetGroupName = "string",
          Protocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
          Port = 123,
          VpcId = "string",
          HealthCheckProtocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
          HealthCheckPort = "string",
          HealthCheckEnabled = TRUE|FALSE,
          HealthCheckIntervalSeconds = 123,
          HealthCheckTimeoutSeconds = 123,
          HealthyThresholdCount = 123,
          UnhealthyThresholdCount = 123,
          HealthCheckPath = "string",
          Matcher = list(
            HttpCode = "string",
            GrpcCode = "string"
          ),
          LoadBalancerArns = list(
            "string"
          ),
          TargetType = "instance"|"ip"|"lambda"|"alb",
          ProtocolVersion = "string",
          IpAddressType = "ipv4"|"ipv6"
        )
      )
    )

### Request syntax

    svc$create_target_group(
      Name = "string",
      Protocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
      ProtocolVersion = "string",
      Port = 123,
      VpcId = "string",
      HealthCheckProtocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
      HealthCheckPort = "string",
      HealthCheckEnabled = TRUE|FALSE,
      HealthCheckPath = "string",
      HealthCheckIntervalSeconds = 123,
      HealthCheckTimeoutSeconds = 123,
      HealthyThresholdCount = 123,
      UnhealthyThresholdCount = 123,
      Matcher = list(
        HttpCode = "string",
        GrpcCode = "string"
      ),
      TargetType = "instance"|"ip"|"lambda"|"alb",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      IpAddressType = "ipv4"|"ipv6"
    )

### Examples

    ## Not run: 
    # This example creates a target group that you can use to route traffic to
    # targets using HTTP on port 80. This target group uses the default health
    # check configuration.
    svc$create_target_group(
      Name = "my-targets",
      Port = 80L,
      Protocol = "HTTP",
      VpcId = "vpc-3ac0fb5f"
    )

    ## End(Not run)
