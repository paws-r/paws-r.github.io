<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_create_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a service

### Description

Creates a service. This action defines the configuration for the
following entities:

-   For public and private DNS namespaces, one of the following
    combinations of DNS records in Amazon Route 53:

    -   `A`

    -   `AAAA`

    -   `A` and `AAAA`

    -   `SRV`

    -   `CNAME`

-   Optionally, a health check

After you create the service, you can submit a `register_instance`
request, and Cloud Map uses the values in the configuration to create
the specified entities.

For the current quota on the number of instances that you can register
using the same namespace and using the same service, see [Cloud Map
quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the *Cloud Map Developer Guide*.

### Usage

    servicediscovery_create_service(Name, NamespaceId, CreatorRequestId,
      Description, DnsConfig, HealthCheckConfig, HealthCheckCustomConfig,
      Tags, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_create_service_:_Name">Name</code></td>
<td><p>[required] The name that you want to assign to the service.</p>
<p>Do not include sensitive information in the name if the namespace is
discoverable by public DNS queries.</p>
<p>If you want Cloud Map to create an <code>SRV</code> record when you
register an instance and you're using a system that requires a specific
<code>SRV</code> format, such as <a
href="http://www.haproxy.org/">HAProxy</a>, specify the following for
<code>Name</code>:</p>
<ul>
<li><p>Start the name with an underscore (_), such as <code
style="white-space: pre;">⁠_exampleservice⁠</code>.</p></li>
<li><p>End the name with <em>._protocol</em>, such as
<code>._tcp</code>.</p></li>
</ul>
<p>When you register an instance, Cloud Map creates an <code>SRV</code>
record and assigns a name to the record by concatenating the service
name and the namespace name (for example,</p>
<p><code
style="white-space: pre;">⁠_exampleservice._tcp.example.com⁠</code>).</p>
<p>For services that are accessible by DNS queries, you can't create
multiple services with names that differ only by case (such as EXAMPLE
and example). Otherwise, these services have the same DNS name and can't
be distinguished. However, if you use a namespace that's only accessible
by API calls, then you can create services that with names that differ
only by case.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_service_:_NamespaceId">NamespaceId</code></td>
<td><p>The ID of the namespace that you want to use to create the
service. The namespace ID must be specified, but it can be specified
either here or in the <code>DnsConfig</code> object.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_create_service_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>A unique string that identifies the request and that allows
failed <code>create_service</code> requests to be retried without the
risk of running the operation twice. <code>CreatorRequestId</code> can
be any unique string (for example, a date/timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_service_:_Description">Description</code></td>
<td><p>A description for the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_create_service_:_DnsConfig">DnsConfig</code></td>
<td><p>A complex type that contains information about the Amazon
Route 53 records that you want Cloud Map to create when you register an
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_service_:_HealthCheckConfig">HealthCheckConfig</code></td>
<td><p><em>Public DNS and HTTP namespaces only.</em> A complex type that
contains settings for an optional Route 53 health check. If you specify
settings for a health check, Cloud Map associates the health check with
all the Route 53 DNS records that you specify in
<code>DnsConfig</code>.</p>
<p>If you specify a health check configuration, you can specify either
<code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code>
but not both.</p>
<p>For information about the charges for health checks, see <a
href="https://aws.amazon.com/cloud-map/pricing/">Cloud Map
Pricing</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_create_service_:_HealthCheckCustomConfig">HealthCheckCustomConfig</code></td>
<td><p>A complex type that contains information about an optional custom
health check.</p>
<p>If you specify a health check configuration, you can specify either
<code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code>
but not both.</p>
<p>You can't add, update, or delete a
<code>HealthCheckCustomConfig</code> configuration from an existing
service.</p></td>
</tr>
<tr class="even">
<td><code id="servicediscovery_create_service_:_Tags">Tags</code></td>
<td><p>The tags to add to the service. Each tag consists of a key and an
optional value that you define. Tags keys can be up to 128 characters in
length, and tag values can be up to 256 characters in length.</p></td>
</tr>
<tr class="odd">
<td><code id="servicediscovery_create_service_:_Type">Type</code></td>
<td><p>If present, specifies that the service instances are only
discoverable using the <code>discover_instances</code> API operation. No
DNS records is registered for the service instances. The only valid
value is <code>HTTP</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Service = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        NamespaceId = "string",
        Description = "string",
        InstanceCount = 123,
        DnsConfig = list(
          NamespaceId = "string",
          RoutingPolicy = "MULTIVALUE"|"WEIGHTED",
          DnsRecords = list(
            list(
              Type = "SRV"|"A"|"AAAA"|"CNAME",
              TTL = 123
            )
          )
        ),
        Type = "HTTP"|"DNS_HTTP"|"DNS",
        HealthCheckConfig = list(
          Type = "HTTP"|"HTTPS"|"TCP",
          ResourcePath = "string",
          FailureThreshold = 123
        ),
        HealthCheckCustomConfig = list(
          FailureThreshold = 123
        ),
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        CreatorRequestId = "string"
      )
    )

### Request syntax

    svc$create_service(
      Name = "string",
      NamespaceId = "string",
      CreatorRequestId = "string",
      Description = "string",
      DnsConfig = list(
        NamespaceId = "string",
        RoutingPolicy = "MULTIVALUE"|"WEIGHTED",
        DnsRecords = list(
          list(
            Type = "SRV"|"A"|"AAAA"|"CNAME",
            TTL = 123
          )
        )
      ),
      HealthCheckConfig = list(
        Type = "HTTP"|"HTTPS"|"TCP",
        ResourcePath = "string",
        FailureThreshold = 123
      ),
      HealthCheckCustomConfig = list(
        FailureThreshold = 123
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Type = "HTTP"
    )

### Examples

    ## Not run: 
    # Example: Create service
    svc$create_service(
      CreatorRequestId = "567c1193-6b00-4308-bd57-ad38a8822d25",
      DnsConfig = list(
        DnsRecords = list(
          list(
            TTL = 60L,
            Type = "A"
          )
        ),
        NamespaceId = "ns-ylexjili4cdxy3xm",
        RoutingPolicy = "MULTIVALUE"
      ),
      Name = "myservice",
      NamespaceId = "ns-ylexjili4cdxy3xm"
    )

    ## End(Not run)
