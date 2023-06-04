<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_register_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service

### Description

Creates or updates one or more records and, optionally, creates a health
check based on the settings in a specified service. When you submit a
`register_instance` request, the following occurs:

-   For each DNS record that you define in the service that's specified
    by `ServiceId`, a record is created or updated in the hosted zone
    that's associated with the corresponding namespace.

-   If the service includes `HealthCheckConfig`, a health check is
    created based on the settings in the health check configuration.

-   The health check, if any, is associated with each of the new or
    updated records.

One `register_instance` request must complete before you can submit
another request and specify the same service ID and instance ID.

For more information, see `create_service`.

When Cloud Map receives a DNS query for the specified DNS name, it
returns the applicable value:

-   **If the health check is healthy**: returns all the records

-   **If the health check is unhealthy**: returns the applicable value
    for the last healthy instance

-   **If you didn't specify a health check configuration**: returns all
    the records

For the current quota on the number of instances that you can register
using the same namespace and using the same service, see [Cloud Map
quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the *Cloud Map Developer Guide*.

### Usage

    servicediscovery_register_instance(ServiceId, InstanceId,
      CreatorRequestId, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_register_instance_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service that you want to use for
settings for the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_register_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] An identifier that you want to associate with the
instance. Note the following:</p>
<ul>
<li><p>If the service that's specified by <code>ServiceId</code>
includes settings for an <code>SRV</code> record, the value of
<code>InstanceId</code> is automatically included as part of the value
for the <code>SRV</code> record. For more information, see <a
href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type">DnsRecord
\&gt; Type</a>.</p></li>
<li><p>You can use this value to update an existing instance.</p></li>
<li><p>To register a new instance, you must specify a value that's
unique among instances that you register by using the same
service.</p></li>
<li><p>If you specify an existing <code>InstanceId</code> and
<code>ServiceId</code>, Cloud Map updates the existing DNS records, if
any. If there's also an existing health check, Cloud Map deletes the old
health check and creates a new one.</p>
<p>The health check isn't deleted immediately, so it will still appear
for a while if you submit a <code>ListHealthChecks</code> request, for
example.</p></li>
</ul>
<p>Do not include sensitive information in <code>InstanceId</code> if
the namespace is discoverable by public DNS queries and any
<code>Type</code> member of <code>DnsRecord</code> for the service
contains <code>SRV</code> because the <code>InstanceId</code> is
discoverable by public DNS queries.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_register_instance_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>A unique string that identifies the request and that allows
failed <code>register_instance</code> requests to be retried without the
risk of executing the operation twice. You must use a unique
<code>CreatorRequestId</code> string every time you submit a
<code>register_instance</code> request if you're registering additional
instances for the same namespace and service.
<code>CreatorRequestId</code> can be any unique string (for example, a
date/time stamp).</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_register_instance_:_Attributes">Attributes</code></td>
<td><p>[required] A string map that contains the following information
for the service that you specify in <code>ServiceId</code>:</p>
<ul>
<li><p>The attributes that apply to the records that are defined in the
service.</p></li>
<li><p>For each attribute, the applicable value.</p></li>
</ul>
<p>Do not include sensitive information in the attributes if the
namespace is discoverable by public DNS queries.</p>
<p>Supported attribute keys include the following:</p>
<p><strong>AWS_ALIAS_DNS_NAME</strong></p>
<p>If you want Cloud Map to create an Amazon Route 53 alias record that
routes traffic to an Elastic Load Balancing load balancer, specify the
DNS name that's associated with the load balancer. For information about
how to get the DNS name, see "DNSName" in the topic <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html">AliasTarget</a>
in the <em>Route 53 API Reference</em>.</p>
<p>Note the following:</p>
<ul>
<li><p>The configuration for the service that's specified by
<code>ServiceId</code> must include settings for an <code>A</code>
record, an <code>AAAA</code> record, or both.</p></li>
<li><p>In the service that's specified by <code>ServiceId</code>, the
value of <code>RoutingPolicy</code> must be
<code>WEIGHTED</code>.</p></li>
<li><p>If the service that's specified by <code>ServiceId</code>
includes <code>HealthCheckConfig</code> settings, Cloud Map will create
the Route 53 health check, but it doesn't associate the health check
with the alias record.</p></li>
<li><p>Auto naming currently doesn't support creating alias records that
route traffic to Amazon Web Services resources other than Elastic Load
Balancing load balancers.</p></li>
<li><p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't
specify values for any of the <code>AWS_INSTANCE</code>
attributes.</p></li>
</ul>
<p><strong>AWS_EC2_INSTANCE_ID</strong></p>
<p><em>HTTP namespaces only.</em> The Amazon EC2 instance ID for the
instance. If the <code>AWS_EC2_INSTANCE_ID</code> attribute is
specified, then the only other attribute that can be specified is
<code>AWS_INIT_HEALTH_STATUS</code>. When the
<code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the
<code>AWS_INSTANCE_IPV4</code> attribute will be filled out with the
primary private IPv4 address.</p>
<p><strong>AWS_INIT_HEALTH_STATUS</strong></p>
<p>If the service configuration includes
<code>HealthCheckCustomConfig</code>, you can optionally use
<code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the
custom health check, <code>HEALTHY</code> or <code>UNHEALTHY</code>. If
you don't specify a value for <code>AWS_INIT_HEALTH_STATUS</code>, the
initial status is <code>HEALTHY</code>.</p>
<p><strong>AWS_INSTANCE_CNAME</strong></p>
<p>If the service configuration includes a <code>CNAME</code> record,
the domain name that you want Route 53 to return in response to DNS
queries (for example, <code>example.com</code>).</p>
<p>This value is required if the service specified by
<code>ServiceId</code> includes settings for an <code>CNAME</code>
record.</p>
<p><strong>AWS_INSTANCE_IPV4</strong></p>
<p>If the service configuration includes an <code>A</code> record, the
IPv4 address that you want Route 53 to return in response to DNS queries
(for example, <code style="white-space: pre;">⁠192.0.2.44⁠</code>).</p>
<p>This value is required if the service specified by
<code>ServiceId</code> includes settings for an <code>A</code> record.
If the service includes settings for an <code>SRV</code> record, you
must specify a value for <code>AWS_INSTANCE_IPV4</code>,
<code>AWS_INSTANCE_IPV6</code>, or both.</p>
<p><strong>AWS_INSTANCE_IPV6</strong></p>
<p>If the service configuration includes an <code>AAAA</code> record,
the IPv6 address that you want Route 53 to return in response to DNS
queries (for example, <code
style="white-space: pre;">⁠2001:0db8:85a3:0000:0000:abcd:0001:2345⁠</code>).</p>
<p>This value is required if the service specified by
<code>ServiceId</code> includes settings for an <code>AAAA</code>
record. If the service includes settings for an <code>SRV</code> record,
you must specify a value for <code>AWS_INSTANCE_IPV4</code>,
<code>AWS_INSTANCE_IPV6</code>, or both.</p>
<p><strong>AWS_INSTANCE_PORT</strong></p>
<p>If the service includes an <code>SRV</code> record, the value that
you want Route 53 to return for the port.</p>
<p>If the service includes <code>HealthCheckConfig</code>, the port on
the endpoint that you want Route 53 to send requests to.</p>
<p>This value is required if you specified settings for an
<code>SRV</code> record or a Route 53 health check when you created the
service.</p>
<p><strong>Custom attributes</strong></p>
<p>You can add up to 30 custom attributes. For each key-value pair, the
maximum length of the attribute name is 255 characters, and the maximum
length of the attribute value is 1,024 characters. The total size of all
provided attributes (sum of all keys and values) must not exceed 5,000
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$register_instance(
      ServiceId = "string",
      InstanceId = "string",
      CreatorRequestId = "string",
      Attributes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Example: Register Instance
    svc$register_instance(
      Attributes = list(
        AWS_INSTANCE_IPV4 = "172.2.1.3",
        AWS_INSTANCE_PORT = "808"
      ),
      CreatorRequestId = "7a48a98a-72e6-4849-bfa7-1a458e030d7b",
      InstanceId = "myservice-53",
      ServiceId = "srv-p5zdwlg5uvvzjita"
    )

    ## End(Not run)
