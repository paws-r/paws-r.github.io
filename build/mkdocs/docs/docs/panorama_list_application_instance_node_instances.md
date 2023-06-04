<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_application_instance_node_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of application node instances

### Description

Returns a list of application node instances.

### Usage

    panorama_list_application_instance_node_instances(ApplicationInstanceId,
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
id="panorama_list_application_instance_node_instances_:_ApplicationInstanceId">ApplicationInstanceId</code></td>
<td><p>[required] The node instances' application instance ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_application_instance_node_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of node instances to return in one page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_list_application_instance_node_instances_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NodeInstances = list(
        list(
          CurrentStatus = "RUNNING"|"ERROR"|"NOT_AVAILABLE"|"PAUSED",
          NodeId = "string",
          NodeInstanceId = "string",
          NodeName = "string",
          PackageName = "string",
          PackagePatchVersion = "string",
          PackageVersion = "string"
        )
      )
    )

### Request syntax

    svc$list_application_instance_node_instances(
      ApplicationInstanceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
