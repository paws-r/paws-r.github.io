<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_get_instances_health_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service

### Description

Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`) of
one or more instances that are associated with a specified service.

There's a brief delay between when you register an instance and when the
health status for the instance is available.

### Usage

    servicediscovery_get_instances_health_status(ServiceId, Instances,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_get_instances_health_status_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service that the instance is associated
with.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_get_instances_health_status_:_Instances">Instances</code></td>
<td><p>An array that contains the IDs of all the instances that you want
to get the health status for.</p>
<p>If you omit <code>Instances</code>, Cloud Map returns the health
status for all the instances that are associated with the specified
service.</p>
<p>To get the IDs for the instances that you've registered by using a
specified service, submit a <code>list_instances</code>
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_get_instances_health_status_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of instances that you want Cloud Map to return
in the response to a <code>get_instances_health_status</code> request.
If you don't specify a value for <code>MaxResults</code>, Cloud Map
returns up to 100 instances.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_get_instances_health_status_:_NextToken">NextToken</code></td>
<td><p>For the first <code>get_instances_health_status</code> request,
omit this value.</p>
<p>If more than <code>MaxResults</code> instances match the specified
criteria, you can submit another
<code>get_instances_health_status</code> request to get the next group
of results. Specify the value of <code>NextToken</code> from the
previous response in the next request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = list(
        "HEALTHY"|"UNHEALTHY"|"UNKNOWN"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_instances_health_status(
      ServiceId = "string",
      Instances = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example gets the current health status of one or more instances
    # that are associate with a specified service.
    svc$get_instances_health_status(
      ServiceId = "srv-e4anhexample0004"
    )

    ## End(Not run)
