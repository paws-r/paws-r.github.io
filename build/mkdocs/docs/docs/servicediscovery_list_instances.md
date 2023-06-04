<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_list_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists summary information about the instances that you registered by using a specified service

### Description

Lists summary information about the instances that you registered by
using a specified service.

### Usage

    servicediscovery_list_instances(ServiceId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_list_instances_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service that you want to list instances
for.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_list_instances_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_instances</code> request, omit this
value.</p>
<p>If more than <code>MaxResults</code> instances match the specified
criteria, you can submit another <code>list_instances</code> request to
get the next group of results. Specify the value of
<code>NextToken</code> from the previous response in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_list_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of instances that you want Cloud Map to return
in the response to a <code>list_instances</code> request. If you don't
specify a value for <code>MaxResults</code>, Cloud Map returns up to 100
instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          Id = "string",
          Attributes = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_instances(
      ServiceId = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # Example: List service instances
    svc$list_instances(
      ServiceId = "srv-qzpwvt2tfqcegapy"
    )

    ## End(Not run)
