<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_list_vpc_ingress_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a list of App Runner VPC Ingress Connections in your Amazon Web Services account

### Description

Return a list of App Runner VPC Ingress Connections in your Amazon Web
Services account.

### Usage

    apprunner_list_vpc_ingress_connections(Filter, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_list_vpc_ingress_connections_:_Filter">Filter</code></td>
<td><p>The VPC Ingress Connections to be listed based on either the
Service Arn or Vpc Endpoint Id, or both.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_vpc_ingress_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in each response (result
page). It's used for a paginated request.</p>
<p>If you don't specify <code>MaxResults</code>, the request retrieves
all available results in a single response.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_list_vpc_ingress_connections_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. It's used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones that are specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcIngressConnectionSummaryList = list(
        list(
          VpcIngressConnectionArn = "string",
          ServiceArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_vpc_ingress_connections(
      Filter = list(
        ServiceArn = "string",
        VpcEndpointId = "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
