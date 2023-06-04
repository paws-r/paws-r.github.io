<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_discover_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Discovers registered instances for a specified namespace and service

### Description

Discovers registered instances for a specified namespace and service.
You can use `discover_instances` to discover instances for any type of
namespace. For public and private DNS namespaces, you can also use DNS
queries to discover instances.

### Usage

    servicediscovery_discover_instances(NamespaceName, ServiceName,
      MaxResults, QueryParameters, OptionalParameters, HealthStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_discover_instances_:_NamespaceName">NamespaceName</code></td>
<td><p>[required] The <code>HttpName</code> name of the namespace. It's
found in the <code>HttpProperties</code> member of the
<code>Properties</code> member of the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_discover_instances_:_ServiceName">ServiceName</code></td>
<td><p>[required] The name of the service that you specified when you
registered the instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_discover_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of instances that you want Cloud Map to return
in the response to a <code>discover_instances</code> request. If you
don't specify a value for <code>MaxResults</code>, Cloud Map returns up
to 100 instances.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_discover_instances_:_QueryParameters">QueryParameters</code></td>
<td><p>Filters to scope the results based on custom attributes for the
instance (for example, <code
style="white-space: pre;">⁠{version=v1, az=1a}⁠</code>). Only instances
that match all the specified key-value pairs are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_discover_instances_:_OptionalParameters">OptionalParameters</code></td>
<td><p>Opportunistic filters to scope the results based on custom
attributes. If there are instances that match both the filters specified
in both the <code>QueryParameters</code> parameter and this parameter,
all of these instances are returned. Otherwise, the filters are ignored,
and only instances that match the filters that are specified in the
<code>QueryParameters</code> parameter are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_discover_instances_:_HealthStatus">HealthStatus</code></td>
<td><p>The health status of the instances that you want to discover.
This parameter is ignored for services that don't have a health check
configured, and all instances are returned.</p>
<p><strong>HEALTHY</strong></p>
<p>Returns healthy instances.</p>
<p><strong>UNHEALTHY</strong></p>
<p>Returns unhealthy instances.</p>
<p><strong>ALL</strong></p>
<p>Returns all instances.</p>
<p><strong>HEALTHY_OR_ELSE_ALL</strong></p>
<p>Returns healthy instances, unless none are reporting a healthy state.
In that case, return all instances. This is also called failing
open.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          InstanceId = "string",
          NamespaceName = "string",
          ServiceName = "string",
          HealthStatus = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
          Attributes = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$discover_instances(
      NamespaceName = "string",
      ServiceName = "string",
      MaxResults = 123,
      QueryParameters = list(
        "string"
      ),
      OptionalParameters = list(
        "string"
      ),
      HealthStatus = "HEALTHY"|"UNHEALTHY"|"ALL"|"HEALTHY_OR_ELSE_ALL"
    )

### Examples

    ## Not run: 
    # Example: Discover registered instances
    svc$discover_instances(
      HealthStatus = "ALL",
      MaxResults = 10L,
      NamespaceName = "example.com",
      ServiceName = "myservice"
    )

    ## End(Not run)
